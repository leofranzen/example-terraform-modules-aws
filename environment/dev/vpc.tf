module "main" {
  source = "../../modules/vpc"

  env  = "dev"
  name = "main"
  azs  = ["sa-east-1a", "sa-east-1b", "sa-east-1c"]

  cidr            = "172.40.0.0/16"
  public_subnets  = ["172.40.0.0/23", "172.40.2.0/23", "172.40.4.0/23"]
  private_subnets = ["172.40.100.0/22", "172.40.104.0/22", "172.40.108.0/22"]

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
}
