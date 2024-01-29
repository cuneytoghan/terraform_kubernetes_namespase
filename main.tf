#create a name space 
resource "kubernetes_namespace" "my-name-space" {
  metadata {
    name = "my-first-namespace"
  }
}