terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=4.1.0"
        }
    }
}
resource "azurerm_role_assignment" "role_assignments" {
  for_each             = var.role_assignments
  scope                = each.value.scope
  role_definition_name = each.value.role_name
  principal_id         = each.value.principal_id
}