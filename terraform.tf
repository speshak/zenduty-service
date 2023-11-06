terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    zenduty = {
      source  = "Zenduty/zenduty"
      version = "0.2.3"
    }
  }
}
