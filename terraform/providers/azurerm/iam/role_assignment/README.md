# Module: azurerm_iam_role_assignment

This module is used to create and manage Azure role assignments in Azure Resource Manager (ARM) using Terraform.

## Usage

To use this module, include the following code in your Terraform configuration:

```hcl
module "role_assignment" {
    source              = "path/to/module"
    role_definition_id  = "<role_definition_id>"
    principal_id        = "<principal_id>"
    scope               = "<scope>"
}
```

Replace the placeholders `<role_definition_id>`, `<principal_id>`, and `<scope>` with the appropriate values for your use case.

## Inputs

The following input variables are supported:

- `role_definition_id` (required): The ID of the Azure role definition.
- `principal_id` (required): The ID of the principal (user, group, or service principal) to assign the role to.
- `scope` (required): The scope at which the role assignment applies.

## Outputs

The following output variables are exported:

- `role_assignments`: The whole resource.
