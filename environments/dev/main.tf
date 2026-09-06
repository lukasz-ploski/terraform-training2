module "webserver" {
  source = "../../modules/webserver"

  name              = "training-dev-webserver"
  instance_type     = var.instance_type
  environment       = "dev"
  enable_monitoring = var.enable_monitoring

  tags = {
    Project = "terraform-training"
    Owner   = "lukasz"
  }
}