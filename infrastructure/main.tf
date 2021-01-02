# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  backend "azurerm" {
    resource_group_name  = "efg-azure-tf-backend"
    storage_account_name = "efgtfbackend"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = "emilygorcenski-rg"
  location = "germanywestcentral"
  tags = {
    Purpose = "Personal Cloud Space"
  }
}

resource "azurerm_cdn_profile" "cdn" {
  name                = "efg-cdn"
  location            = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard_Microsoft"
}

resource "azurerm_storage_account" "blog_storage" {
  name                     = "efgblogstore"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }

  tags = {
    environment = "production"
    purpose     = "blog"
  }
}

resource "azurerm_cdn_endpoint" "cdn_blog" {
  name                = "efg-blog-cdn"
  profile_name        = azurerm_cdn_profile.cdn.name
  location            = azurerm_cdn_profile.cdn.location
  resource_group_name = azurerm_resource_group.rg.name
  origin_host_header  = azurerm_storage_account.blog_storage.primary_web_host

  origin {
    name      = "emilygorcenski-blog"
    host_name = azurerm_storage_account.blog_storage.primary_web_host
  }

  tags = {
    environment = "production"
    purpose     = "blog"
  }

  delivery_rule {
    name  = "EnforceHTTPS"
    order = "1"

    request_scheme_condition {
      operator     = "Equal"
      match_values = ["HTTP"]
    }

    url_redirect_action {
      redirect_type = "Found"
      protocol      = "Https"
    }
  }

  provisioner "local-exec" {
    command = "az cdn custom-domain create --endpoint-name ${azurerm_cdn_endpoint.cdn_blog.name} --hostname \"www.emilygorcenski.com\" --resource-group ${azurerm_resource_group.rg.name} --profile-name ${azurerm_cdn_profile.cdn.name} -n emilygorcenski"
  }

#   provisioner "local-exec" {
#     command = "az cdn custom-domain enable-https --endpoint-name ${azurerm_cdn_endpoint.cdn_blog.name} --resource-group ${azurerm_resource_group.rg.name} --profile-name ${azurerm_cdn_profile.cdn.name} -n emilygorcenski"
#   }
}

resource "azurerm_dns_zone" "emilygorcenski_dns" {
  name                = "emilygorcenski.com"
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    purpose = "blog"
  }
}

resource "azurerm_dns_a_record" "efg_cdn_alias" {
  name                = "@"
  zone_name           = azurerm_dns_zone.emilygorcenski_dns.name
  resource_group_name = azurerm_resource_group.rg.name
  ttl                 = 300
  target_resource_id  = azurerm_cdn_endpoint.cdn_blog.id
}

resource "azurerm_dns_cname_record" "cdnverify" {
  name                = "cdnverify"
  zone_name           = azurerm_dns_zone.emilygorcenski_dns.name
  resource_group_name = azurerm_resource_group.rg.name
  ttl                 = 3600
  record              = "cdnverify.${azurerm_cdn_endpoint.cdn_blog.name}.azureedge.net"

  provisioner "local-exec" {
    command = "az cdn custom-domain create --endpoint-name ${azurerm_cdn_endpoint.cdn_blog.name} --hostname \"emilygorcenski.com\" --resource-group ${azurerm_resource_group.rg.name} --profile-name ${azurerm_cdn_profile.cdn.name} -n apex"
  }
}

resource "azuread_service_principal" "sp" {
  application_id = "205478c0-bd83-4e1b-a9d6-db63a3e1e1c8"
}

resource "azurerm_key_vault" "emilygorcenski_kv" {
  name                       = "emilygorcenskikeyvault"
  location                   = azurerm_resource_group.rg.location
  resource_group_name        = azurerm_resource_group.rg.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_enabled        = true
  soft_delete_retention_days = 7
    
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    certificate_permissions = [
      "create",
      "delete",
      "deleteissuers",
      "get",
      "getissuers",
      "import",
      "list",
      "listissuers",
      "managecontacts",
      "manageissuers",
      "purge",
      "setissuers",
      "update",
    ]

    key_permissions = [
      "backup",
      "create",
      "decrypt",
      "delete",
      "encrypt",
      "get",
      "import",
      "list",
      "purge",
      "recover",
      "restore",
      "sign",
      "unwrapKey",
      "update",
      "verify",
      "wrapKey",
    ]

    secret_permissions = [
      "backup",
      "delete",
      "get",
      "list",
      "purge",
      "recover",
      "restore",
      "set",
    ]
  }
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = azuread_service_principal.sp.id

    certificate_permissions = [
      "get",
      "list",
    ]

    secret_permissions = [
      "get",
      "list",
    ]
  }
  tags = {
      purpose = "blog"
  }
}

resource "azurerm_key_vault_certificate" "efg_cert" {
  name         = "efg-blog-cert-2"
  key_vault_id = azurerm_key_vault.emilygorcenski_kv.id

  certificate_policy {
    issuer_parameters {
      name = "Unknown"
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = true
    }

    lifetime_action {
      action {
        action_type = "EmailContacts"
      }

      trigger {
        days_before_expiry = 30
      }
    }

    secret_properties {
      content_type = "application/x-pkcs12"
    }

    x509_certificate_properties {
      # Server Authentication = 1.3.6.1.5.5.7.3.1
      # Client Authentication = 1.3.6.1.5.5.7.3.2
      extended_key_usage = ["1.3.6.1.5.5.7.3.1"]

      key_usage = [
        "cRLSign",
        "dataEncipherment",
        "digitalSignature",
        "keyAgreement",
        "keyCertSign",
        "keyEncipherment",
      ]

      subject_alternative_names {
        dns_names = ["www.emilygorcenski.com"]
      }

      subject            = "CN=emilygorcenski.com"
      validity_in_months = 12
    }
  }

  tags = {
      purpose = "blog"
  }
}
