variable "warehouse_name" {
  type = string
}

variable "database_names" {
  type = list(string)
}

variable "schemas" {
  type = map(object({
    database = string
    name     = string
  }))
}

variable "role_names" {
  type = list(string)
}
