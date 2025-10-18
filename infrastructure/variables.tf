variable "environment" {
    description = "Deployment environment (e.g., dev, staging, prod)"
    type        = string
    validation {
      condition = length(var.environment) > 0
      error_message = "environment must be non empty string"
    }
}


variable "helm_releases" {
    description = "Helm releases configuration for each service"
    type = map(object({
        name = string
        chart = string
        repository = string
        version = string
        timeout = string
        values = optional(any)
    }))
}

# variable "ingresses" {
#     description = "value"
#     type = map(object({
#         name = string
#         namespace = string
#         service_name = string
#         service_port = number
#         path = string
#         path_type = string
#         annotations = optional(map(string),{})
#     }))
# }