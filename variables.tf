variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "my-web-app"
}

variable "container_port" {
  description = "External port for the container"
  type        = number
}

variable "docker_image" {
  description = "Docker image to pull"
  type        = string
}
