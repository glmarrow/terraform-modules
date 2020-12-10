provider "aws" {
  region     = var.aws_region
}

resource "aws_iam_role" "linux_role" {
  name = "${var.customer_prefix}-${var.environment}-instance_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
  tags = {
    Name = "${var.customer_prefix}-${var.environment}-instance-iam-role"
  }
}

resource "aws_iam_instance_profile" "linux_profile" {
  name = "${var.customer_prefix}-${var.environment}-instance_profile"
  role = aws_iam_role.linux_role.name
}

resource "aws_iam_role_policy" "linux_policy" {
  name = "${var.customer_prefix}-${var.environment}-instance_policy"
  role = aws_iam_role.linux_role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [ "*" ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}