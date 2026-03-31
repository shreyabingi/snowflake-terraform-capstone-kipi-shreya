terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

resource "snowflake_account_role" "role" {
  for_each = toset(var.role_names)

  name    = each.value
  comment = "Role created using Terraform"
}
