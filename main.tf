#create a name space 
resource "kubernetes_namespace" "my-name-space" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_resource_quota" "podlimit" {
  metadata {
    name = "podlimit"
    namespace = var.namespace
  }
  spec {
    hard = {
      pods = var.podlimit
    }
    scopes = ["BestEffort"]
  }
}

resource "kubernetes_limit_range" "limitrange" {
  metadata {
    name = "limitrange"
    namespace = var.namespace
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = "2000m"
        memory = "4Gi"
      }
    }
    limit {
      type = "Container"
      default = {
        cpu    = "500m"
        memory = "5Gi"
      }
    }
  }
}