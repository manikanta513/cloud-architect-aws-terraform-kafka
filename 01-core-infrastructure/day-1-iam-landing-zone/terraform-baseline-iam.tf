# Baseline IAM groups and roles

resource "aws_iam_group" "cloud_architects" {
  name = "Cloud-Architects"
}

resource "aws_iam_group" "devops_engineers" {
  name = "DevOps-Engineers"
}

resource "aws_iam_group" "read_only_audit" {
  name = "ReadOnly-Audit"
}

# Example assume role
resource "aws_iam_role" "cross_account_admin" {
  name = "CrossAccountAdmin"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        AWS = "arn:aws:iam::YOUR-MGMT-ACCOUNT-ID:root"
      },
      Action = "sts:AssumeRole"
    }]
  })
}
