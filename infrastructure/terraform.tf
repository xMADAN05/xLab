terraform {
    required_version = ">=1.1"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = ">=2.38.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = ">=2.0.0, < 4.0.0"
    }
    }
    
    # backend "s3" { }
}