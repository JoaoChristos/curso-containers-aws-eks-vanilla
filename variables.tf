variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "k8s_version" {
  type = string
}

variable "ssm_vpc" {
  type = string
}


variable "addon_cni_version" {
  type    = string
  default = "v1.21.2-eksbuild.2"
}

variable "addon_coredns_version" {
  type    = string
  default = "v1.14.2-eksbuild.4"
}
variable "addon_kubeproxy_version" {
  type    = string
  default = "v1.36.2-eksbuild.7"
}



variable "ssm_public_subnets" {
  type = list(string)
}

variable "ssm_private_subnets" {
  type = list(string)
}

variable "ssm_pod_subnets" {
  type = list(string)
}

variable "auto_scale_options" {
  type = object({
    min     = number
    max     = number
    desired = number
  })
}

variable "nodes_instance_sizes" {
  type        = list(string)
  description = "Lista de tamanhos das instâncias do projeto"
}