variable "db_name" {
  type        = string
  description = "Name of the RDS database"
}
variable "region" {
  type        = string
  default     = "us-east-1"
}
