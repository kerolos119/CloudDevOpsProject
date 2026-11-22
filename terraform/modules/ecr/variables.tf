variable "repositories" {
  description = "ECR repository names"
  type        = list(string)
}

variable "max_images" {
  description = "Number of images to keep per repository"
  type        = number
  default     = 10
}
