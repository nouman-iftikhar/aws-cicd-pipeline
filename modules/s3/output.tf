output "bucket_regional_domain_name" {
  value = aws_s3_bucket.cdn_bucket.bucket_regional_domain_name
}

output "s3_endpoint" {
  value = aws_s3_bucket.cdn_bucket.bucket_domain_name
}