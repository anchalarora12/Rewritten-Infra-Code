module "network" {
  source = "./modules/vpc"
  prefix = var.prefix
}

module "compute" {
  source         = "./modules/ec2"
  prefix         = var.prefix
  public_key     = var.public_key
  private_key    = var.private_key_path
}

module "storage" {
  source = "./modules/s3"
  prefix = var.prefix
}

provider "aws" {
  region = var.region
}