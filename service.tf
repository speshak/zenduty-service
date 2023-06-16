# Wire up a Zenduty alert for this service
data "zenduty_esp" "policy" {
  team_id = var.team_id
  esp_id  = var.escalation_policy
}


resource "zenduty_services" "service" {
  name              = var.service_name
  team_id           = var.team_id
  escalation_policy = data.zenduty_esp.policy.unique_id
}
