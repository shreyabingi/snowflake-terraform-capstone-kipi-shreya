output "database_names" {
  description = "Names of created databases"
  value       = [for db in snowflake_database.database : db.name]
}
