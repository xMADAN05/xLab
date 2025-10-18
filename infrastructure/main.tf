module "platform" {
    source = "./components/modules"
    environment = var.environment
    # namespaces = var.namespaces
    helm_releases = var.helm_releases
    # ingresses = var.ingresses
}