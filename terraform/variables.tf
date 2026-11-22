variable "region" {
  type    = string
  default = "us-east-1"
}

variable "aws_endpoint" {
  description = "Floci endpoint. Set to null to use real AWS."
  type        = string
  default     = "http://localhost:4566"
}

variable "project_name" {
  type    = string
  default = "ivolve"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "cluster_name" {
  type    = string
  default = "ivolve-eks"
}
