# module "s3" {
#   source      = "./modules/s3"
#   bucket_name = var.bucket_name
# }

# module "cdn" {
#   source                      = "./modules/cloudfront"
#   bucket_regional_domain_name = module.s3.bucket_regional_domain_name
#   s3_endpoint                 = module.s3.s3_endpoint
# }

module "sns" {
  source          = "./modules/sns"
  sns_topic_email = var.sns_topic_email
}

# module "cloudwatch_alarm" {
#   source        = "./modules/cloudwatch"
#   sns_topic_arn = module.sns.sns_topic_arn
# }