terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "patient_records" {
  bucket = "healthcare-patient-records-demo"
}

resource "aws_s3_bucket_public_access_block" "patient_records" {
  bucket = aws_s3_bucket.patient_records.id

  # Intentionally insecure settings for IaC scanning demonstration
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
