resource "azurerm_resource_group" "rg1" {
  name     = "arsh1"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg2" {
  name     = "arsh2"
  location = "West Europe"
}

resource "azurerm_storage_account" "strg" {
  name                     = "arsh121"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "rg3" {
  name     = "arsh3"
  location = "West Europe"
}

resource "azurerm_storage_account" "strg1" {
  name                     = "arsh1210"
  resource_group_name      = azurerm_resource_group.rg3.name
  location                 = azurerm_resource_group.rg3.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_resource_group" "rg4" {
  name     = "arsh4"
  location = "West Europe"
}