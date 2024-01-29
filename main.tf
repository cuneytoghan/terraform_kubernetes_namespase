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
      pods = 10
    }
    scopes = ["BestEffort"]
  }
}