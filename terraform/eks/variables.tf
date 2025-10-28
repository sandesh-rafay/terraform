variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
  description = "AWS Secret Key"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster Name"
}
