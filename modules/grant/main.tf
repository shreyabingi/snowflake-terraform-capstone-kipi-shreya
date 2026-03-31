terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "~> 0.98"
    }
  }
}
############################################
# Warehouse Usage Grants
############################################

resource "snowflake_grant_privileges_to_account_role" "warehouse_usage" {

  for_each = {
    for role in var.role_names :
    role => role
  }

  privileges        = ["USAGE"]
  account_role_name = each.value

  on_account_object {

    object_type = "WAREHOUSE"
    object_name = var.warehouse_name

  }
}

############################################
# Database Usage Grants (ALL DBs)
############################################

resource "snowflake_grant_privileges_to_account_role" "database_usage" {

  for_each = {
    for pair in setproduct(var.role_names, var.database_names) :
    "${pair[0]}_${pair[1]}" => {
      role = pair[0]
      db   = pair[1]
    }
  }

  privileges        = ["USAGE"]
  account_role_name = each.value.role

  on_account_object {

    object_type = "DATABASE"
    object_name = each.value.db

  }
}

############################################
# Schema Usage Grants (ALL Schemas)
############################################

resource "snowflake_grant_privileges_to_account_role" "schema_usage" {

  for_each = {
    for pair in setproduct(var.role_names, keys(var.schemas)) :
    "${pair[0]}_${pair[1]}" => {
      role   = pair[0]
      schema = var.schemas[pair[1]]
    }
  }

  privileges        = ["USAGE"]
  account_role_name = each.value.role

  on_schema {

    schema_name = "${each.value.schema.database}.${each.value.schema.name}"

  }
}

############################################
# Future Table SELECT Grants
############################################

resource "snowflake_grant_privileges_to_account_role" "future_table_select" {

  for_each = {
    for pair in setproduct(var.role_names, keys(var.schemas)) :
    "${pair[0]}_${pair[1]}" => {
      role   = pair[0]
      schema = var.schemas[pair[1]]
    }
  }

  privileges        = ["SELECT"]
  account_role_name = each.value.role

  on_schema_object {

    future {

      object_type_plural = "TABLES"

      in_schema = "${each.value.schema.database}.${each.value.schema.name}"

    }

  }
}
