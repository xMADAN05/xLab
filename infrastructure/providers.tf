variable "kubeconfig_path" {
  description = "Path to kubeconfig file"
  type = string
}

variable "config_context" {
  description = "kubeconfig context to use"
  type =  string
}

provider "kubernetes" {
    alias = "rancher"
    config_path = var.kubeconfig_path
    config_context = var.config_context #"rancher-desktop"
}

provider "helm" {
    kubernetes = {
    config_path =  var.kubeconfig_path
    config_context = var.config_context
    }
}
