#create a name space 
resource "kubernetes_namespace" "my-name-space" {
  metadata {
    name = var.namespace
    annotations = var.annotations
    labels = var.labels
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
        cpu    = var.pod_max_cpu_limit
        memory = var.pod_max_memory_limit
      }
    }
    limit {
      type = "Container"
      default = {
        cpu    = var.container_max_cpu_limit
        memory = var.container_max_memory_limit
      }
    }
  }
}

