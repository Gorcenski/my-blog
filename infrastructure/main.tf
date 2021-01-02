# Configure the Azure provider
terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.26"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name     = "emilygorcenski-rg"
    location = "germanywestcentral"
    tags     = {
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
        match_values = [ "HTTP" ]
        }

        url_redirect_action {
        redirect_type = "Found"
        protocol      = "Https"
        }
    }

    provisioner "local-exec" {
        command = "az cdn custom-domain create --endpoint-name ${azurerm_cdn_endpoint.cdn_blog.name} --hostname \"azure.emilygorcenski.com\" --resource-group ${azurerm_resource_group.rg.name} --profile-name ${azurerm_cdn_profile.cdn.name} -n emilygorcenski"
    }

    provisioner "local-exec" {
        command = "az cdn custom-domain enable-https --endpoint-name ${azurerm_cdn_endpoint.cdn_blog.name} --resource-group ${azurerm_resource_group.rg.name} --profile-name ${azurerm_cdn_profile.cdn.name} -n emilygorcenski"
    }
}
