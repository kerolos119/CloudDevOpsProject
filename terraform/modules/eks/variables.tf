variable "cluster_name" {
  type = string
}

variable "kubernetes_version" {
  type    = string
  default = "1.31"
}

variable "private_subnet_ids" {
  description = "Private subnets, one worker node group is created per subnet"
  type        = list(string)
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}
