variable "environment" {
    description = "Deployment environment (e.g., dev, staging, prod)"
    type        = string
}

# variable "namespaces" {
#     description = "Kubernetes namespaces to create"
#     type = map(object({
#         name = string
#     }))
# }

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
