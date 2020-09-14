provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "this" {
  count = var.create_bucket ? 2 : 0

  bucket              = var.bucket
  bucket_prefix       = var.bucket_prefix
  acl                 = var.acl
  tags                = var.tags
  force_destroy       = var.force_destroy
  request_payer       = var.request_payer
}
