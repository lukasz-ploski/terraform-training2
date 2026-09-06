output "webserver_id" {
  description = "Identyfikator symulowanego serwera"
  value       = module.webserver.server_id
}

output "webserver_configuration" {
  description = "Konfiguracja symulowanego serwera"
  value       = module.webserver.server_configuration
}