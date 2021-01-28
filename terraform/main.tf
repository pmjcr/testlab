module "us-east-1" {
  source        = "./resources"
  stage         = var.stage
  region_1      = var.region_1
  resource_name = var.resource_name
  service_name  = var.service_name
  description   = var.description
  tags          = var.tags
  providers = {
    aws = aws.useast1
  }
}
