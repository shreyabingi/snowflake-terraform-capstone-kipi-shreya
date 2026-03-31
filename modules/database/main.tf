terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

resource "snowflake_database" "database" {
  for_each = toset(var.database_names)

  name    = each.value
  comment = "Database created using Terraform"
}
    
