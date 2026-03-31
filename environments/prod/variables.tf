variable "snowflake_account" {
  type = string
}

variable "snowflake_username" {
  type = string
}

variable "snowflake_password" {
  type      = string
  sensitive = true
}

variable "snowflake_role" {
  type = string
}

variable "warehouse_name" {
  type = string
}

variable "warehouse_size" {
  type = string
}

variable "auto_suspend" {
  type = number
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
########################################
# Table Configuration
########################################

variable "tables" {
  description = "Tables to create"
  type = map(object({
    database = string
    schema   = string
    name     = string
  }))
}
