locals {
  common_tags = {
    Name        = var.name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  final_tags = merge(local.common_tags, var.tags)
}

resource "terraform_data" "webserver" {
  input = {
    name              = var.name
    instance_type     = var.instance_type
    environment       = var.environment
    enable_monitoring = var.enable_monitoring
    tags              = local.final_tags
  }
}