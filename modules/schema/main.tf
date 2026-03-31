terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

resource "snowflake_schema" "schema" {
  for_each = var.schemas

  database = each.value.database
  name     = each.value.name

  comment = "Schema created using Terraform"
}
