output {
  description = "SNS Topic for alerts"
  value       = aws_sns_topic.zenduty_cloudwatch.arn
}
