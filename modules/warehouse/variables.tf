variable "warehouse_name" {
  description = "Name of the Snowflake warehouse"
  type        = string
}

variable "warehouse_size" {
  description = "Size of the warehouse"
  type        = string
}

variable "auto_suspend" {
  description = "Auto suspend time in seconds"
  type        = number
}
