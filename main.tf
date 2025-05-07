provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "demo_bucket_taner" {
  bucket = "${replace(lower(var.project_name), " ", "-")}-bucket-${random_id.bucket_id.hex}"
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

variable "project_name" {
  default = "terraform-s3"
}

variable "region" {
  default = "ap-southeast-2"
}