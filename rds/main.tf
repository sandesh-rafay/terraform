provider "aws" {
  region = var.region
}

resource "aws_db_instance" "this" {
  identifier = var.db_name
  # … other config …
}

output "rds_hostname" {
  value = aws_db_instance.this.address
}
