variable "name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  description = "Public subnet for the server"
  type        = string
}

variable "ami_id" {
  type    = string
  default = "ami-ubuntu2404-amd64"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "key_name" {
  type    = string
  default = "ivolve-key"
}

variable "public_key_path" {
  type = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH into the server"
  type        = string
  default     = "0.0.0.0/0"
}

variable "volume_size" {
  type    = number
  default = 20
}
