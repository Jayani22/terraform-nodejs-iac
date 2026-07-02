variable "image_name" {
  description = "Docker image name"
  type        = string
  default     = "terraform-node-api:latest"
}

variable "container_name" {
  description = "Container name"
  type        = string
  default     = "terraform-node-api"
}

variable "internal_port" {
  description = "Application port inside the container"
  type        = number
  default     = 3000
}

variable "external_port" {
  description = "Port exposed on the host"
  type        = number
  default     = 3002
}