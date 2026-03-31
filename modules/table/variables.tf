variable "tables" {
  description = "Tables to create"
  type = map(object({
    database = string
    schema   = string
    name     = string
  }))
}
