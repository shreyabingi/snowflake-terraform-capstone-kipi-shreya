terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
  role     = var.snowflake_role
}

module "warehouse_dev" {
  source = "../../modules/warehouse"

  warehouse_name = var.warehouse_name
  warehouse_size = var.warehouse_size
  auto_suspend   = var.auto_suspend
}
module "database_dev" {
  source = "../../modules/database"

  database_names = var.database_names
}
module "schema_dev" {
  source = "../../modules/schema"

  schemas = var.schemas
}
module "role_dev" {
  source = "../../modules/role"

  role_names = var.role_names
}
module "grant_dev" {
  source = "../../modules/grant"

  warehouse_name = var.warehouse_name
  database_names = var.database_names
  schemas        = var.schemas
  role_names     = var.role_names
}
module "table_dev" {
  source = "../../modules/table"

  tables = var.tables
}
