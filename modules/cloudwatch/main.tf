resource "aws_cloudwatch_metric_alarm" "foobar" {
  alarm_name                = "sns-alarm-demo"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "5xxErrorRate"
  namespace                 = "AWS/CloudFront"
  period                    = "60"
  statistic                 = "Average"
  threshold                 = "1"
  alarm_description         = "This metric monitors 5xxErrorRate for cloudfront"
  insufficient_data_actions = []
  alarm_actions             = [var.sns_topic_arn]
}