provider "aws" {
  region = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_db_instance" "this" {
  identifier              = var.db_name
  allocated_storage       = 20
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "Admin12345!"
  parameter_group_name    = "default.mysql8.0"
  skip_final_snapshot     = true
}

output "rds_hostname" {
  value = aws_db_instance.this.address
}
