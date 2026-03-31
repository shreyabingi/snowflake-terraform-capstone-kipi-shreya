variable "schemas" {
  description = "Map of schemas to create"
  type = map(object({
    database = string
    name     = string
  }))
}
