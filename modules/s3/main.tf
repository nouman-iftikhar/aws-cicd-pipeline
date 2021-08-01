resource "aws_s3_bucket" "cdn_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Name"
    Environment = "CDN Bucket"
  }
}

resource "aws_s3_bucket_policy" "cdn_bucket_policy" {
  bucket = aws_s3_bucket.cdn_bucket.id

  # Terraform's "jsonencode" function converts a
  # Terraform expression's result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "MYBUCKETPOLICY"
    Statement = [
      {
        Sid       = "IPAllow"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:*"
        Resource = [
          aws_s3_bucket.cdn_bucket.arn,
          "${aws_s3_bucket.cdn_bucket.arn}/*",
        ]
      },
    ]
  })
}
