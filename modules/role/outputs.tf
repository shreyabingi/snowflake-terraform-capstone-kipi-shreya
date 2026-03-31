output "role_names" {
  description = "Names of created roles"
  value       = [for r in snowflake_account_role.role : r.name]
}
