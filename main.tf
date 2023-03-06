terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.2.1"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.26.1"
}

resource "minikube_cluster" "docker" {
  driver       = "docker"
  cluster_name = "terraform-workshop"
  addons = [
    "default-storageclass",
  ]
}
