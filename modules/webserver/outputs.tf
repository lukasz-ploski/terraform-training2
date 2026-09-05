output "server_id" {
  description = "Identyfikator symulowanego serwera"
  value       = terraform_data.webserver.id
}

output "server_configuration" {
  description = "Konfiguracja symulowanego serwera"
  value       = terraform_data.webserver.output
}