variable "role_assignments" {
  type = map(object({
    scope        = string
    principal_id = string
    role_name    = string
  }))
}