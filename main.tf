variable "rg_name" {}


resource "azurerm_resource_group" "example" {
  for_each = var.rg_name
  location = each.value
  name     = each.key
}
