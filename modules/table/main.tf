terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

resource "snowflake_table" "table" {
  for_each = var.tables

  database = each.value.database
  schema   = each.value.schema
  name     = each.value.name

  comment = "Table created using Terraform"

  column {
    name = "ID"
    type = "NUMBER"
  }

  column {
    name = "NAME"
    type = "STRING"
  }

  column {
    name = "CREATED_AT"
    type = "TIMESTAMP_NTZ"
  }
}
