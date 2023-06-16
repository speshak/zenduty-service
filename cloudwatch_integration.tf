resource "zenduty_integrations" "cloudwatch" {
  team_id    = var.team_id
  service_id = zenduty_services.service.id

  # CloudWatch v2
  # https://www.zenduty.com/api/account/applications/
  application = "1ef0e211-82fb-454a-96c4-20bd26ebdcab"

  name    = "CloudWatch"
  summary = "AWS CloudWatch"
}


resource "aws_sns_topic" "zenduty_cloudwatch" {
  name = "zenduty_cloudwatch_${var.servcie_name}"
}

resource "aws_sns_topic_subscription" "zenduty" {
  topic_arn = aws_sns_topic.zenduty_cloudwatch.arn
  protocol  = "https"
  endpoint  = zenduty_integrations.cloudwatch.webhook_url
}
