variable namespace {
  type        = string
  default     = ""
  description = "please give a name to your namespace"
}
variable podlimit {
  type        = string
  default     = ""
  description = "set limit for number of pods"
}

variable pod_max_cpu_limit {
  type        = string
  default     = ""
  description = "please se the pod size"
}

variable pod_max_memory_limit {
  type        = string
  default     = ""
  description = "please set the pod memory size"
}
variable container_max_cpu_limit {
  type        = string
  default     = ""
  description = "please se the container size"
}

variable container_max_memory_limit {
  type        = string
  default     = ""
  description = "please set the container memory size"
}
