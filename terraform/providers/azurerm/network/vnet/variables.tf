variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

variable "subnet_map" {
  description = "Map of subnets to create"
  type = map(object({
    name         = string
    newbits      = number
    subnet_index = number
  }))
}