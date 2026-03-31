output "table_names" {
  value = [for t in snowflake_table.table : t.name]
}
