# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

#provider "aws" {
#  region = var.region

#  default_tags {
#    tags = {
#      Hashicorp-Learn = "aws-iam-policy"
#    }
#  }
#}

resource "aws_iam_policy" "policy" {
  name        = "AAAA-test-policy"
  description = "My test policy"

  policy = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOT
}

