snowflake_account  = "UMCPHFQ-*******"
snowflake_username = "SHREYABINGI25"
snowflake_password = "*******"
snowflake_role     = "SECURITYADMIN"

warehouse_name = "COMPUTE_WH_PROD"
warehouse_size = "MEDIUM"
auto_suspend   = 60

database_names = [
  "SALES_DB_PROD",
  "HR_DB_PROD",
  "FINANCE_DB_PROD"
]

schemas = {

  sales_schema = {
    database = "SALES_DB_PROD"
    name     = "SALES_SCHEMA"
  }

  hr_schema = {
    database = "HR_DB_PROD"
    name     = "HR_SCHEMA"
  }

  finance_schema = {
    database = "FINANCE_DB_PROD"
    name     = "FIN_SCHEMA"
  }

}

role_names = [
  "SYSADMIN_CUSTOM_PROD",
  "DATA_ENGINEER_PROD",
  "DATA_ANALYST_PROD"
]

tables = {

  customers_table = {
    database = "SALES_DB_PROD"
    schema   = "SALES_SCHEMA"
    name     = "CUSTOMERS"
  }

  employees_table = {
    database = "HR_DB_PROD"
    schema   = "HR_SCHEMA"
    name     = "EMPLOYEES"
  }

  transactions_table = {
    database = "FINANCE_DB_PROD"
    schema   = "FIN_SCHEMA"
    name     = "TRANSACTIONS"
  }

}
