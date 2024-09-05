terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}


resource "aws_iam_user" "tf-user" {
  name = "tf-super-user"
  tags = {
    Description = "this the first user that will be created using tf"
  }
}

resource "aws_iam_policy" "admin-access" {
  name        = "admin-access"
  path        = "/"
  description = "admin access policy test"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : "*",
        "Resource" : "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "policy-assignment" {
  user = aws_iam_user.tf-user.name
  
  policy_arn = aws_iam_policy.admin-access.arn
}