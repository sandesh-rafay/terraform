variable "cluster_name" {
  type        = string
  description = "Name of EKS cluster"
}
variable "region" {
  type        = string
  default     = "us-east-1"
}
