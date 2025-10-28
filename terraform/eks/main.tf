provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_role.arn
  # … other config …
}

output "eks_cluster_name" {
  value = aws_eks_cluster.this.name
}
