variable "service_name" {
  description = "Name of the service"
  type        = string
}

variable "team_id" {
  description = "ID of the team to which the service belongs"
  type        = string
}

variable "escalation_policy_id" {
  description = "ID of the escalation policy to which the service belongs"
  type        = string
  default     = null
}
