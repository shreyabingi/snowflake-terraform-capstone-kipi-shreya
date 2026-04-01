snowflake_account  = "UMCPHFQ-*******"
snowflake_username = "SHREYABINGI25"
snowflake_password = "*******"
snowflake_role     = "SYSADMIN"

########################################
# Warehouse Configuration
########################################

warehouse_name = "COMPUTE_WH_DEV"
warehouse_size = "XSMALL"
auto_suspend   = 60

database_names = [
  "SALES_DB_DEV",
  "HR_DB_DEV",
  "FINANCE_DB_DEV"
]

########################################
# Schema Configuration
########################################

schemas = {

  sales_schema = {
    database = "SALES_DB_DEV"
    name     = "SALES_SCHEMA"
  }

  hr_schema = {
    database = "HR_DB_DEV"
    name     = "HR_SCHEMA"
  }

  finance_schema = {
    database = "FINANCE_DB_DEV"
    name     = "FIN_SCHEMA"
  }

}

########################################
# Role Configuration
########################################

role_names = [
  "SYSADMIN_CUSTOM",
  "DATA_ENGINEER",
  "DATA_ANALYST"
]

########################################
# Table Configuration
########################################

tables = {
  customers_table = {
    database = "SALES_DB_DEV"
    schema   = "SALES_SCHEMA"
    name     = "CUSTOMERS"
  }

  employees_table = {
    database = "HR_DB_DEV"
    schema   = "HR_SCHEMA"
    name     = "EMPLOYEES"
  }

  transactions_table = {
    database = "FINANCE_DB_DEV"
    schema   = "FIN_SCHEMA"
    name     = "TRANSACTIONS"
  }

}
