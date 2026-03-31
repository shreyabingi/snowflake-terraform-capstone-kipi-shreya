terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

resource "snowflake_warehouse" "warehouse" {
  name           = var.warehouse_name
  warehouse_size = var.warehouse_size
  auto_suspend   = var.auto_suspend
  auto_resume    = true

  comment = "Warehouse created using Terraform module"
}
