output "connection_string" {
  value = "ssh ubuntu@${module.webserver.eip}"
}
