output "container_name" {
  value = docker_container.node_api.name
}

output "container_id" {
  value = docker_container.node_api.id
}

output "docker_image" {
  value = docker_image.node_api.name
}

output "application_url" {
  value = "http://localhost:${var.external_port}"
}

output "health_endpoint" {
  value = "http://localhost:${var.external_port}/health"
}