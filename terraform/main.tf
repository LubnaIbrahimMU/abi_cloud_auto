module "EC2" {
  source            = "./modules/EC2"
  public1_subnet_id = var.public1_subnet_id
  vpc_id            = var.vpc_id
  AZ                = var.AZ
}

