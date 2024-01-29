# terraform_kubernetes_namespase
# Usage 

### please copy paste below code

```
module test-namespace {
    source = "../"
    namespace = "test-namespace"
    podlimit = "10"
    pod_max_cpu_limit = "2000m"
    pod_max_memory_limit = "5Gi"
    container_max_cpu_limit = "1000m"
    container_max_memory_limit = "2Gi"
    annotations = {
        managed_by = "terraform"
    }
    labels = {
        managed_by = "terraform"
    }
}
```

#change name of module based on your need/application , and you will have namespace for your application.