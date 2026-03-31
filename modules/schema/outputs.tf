output "schema_names" {
  value = [for s in snowflake_schema.schema : s.name]
}
