# Creating S3 bucket 

resource "aws_s3_bucket" "pro_bucket1" {
  bucket = "pro-deepa28"
  acl    = "public-read-write"
  force_destroy = true     
}

resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.pro_bucket1.id
  versioning_configuration {
    status = "Enabled"
  }
  }
