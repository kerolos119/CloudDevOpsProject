module "network" {
  source       = "./modules/network"
  name         = var.project_name
  azs          = var.azs
  cluster_name = var.cluster_name
}

module "server" {
  source           = "./modules/server"
  name             = var.project_name
  vpc_id           = module.network.vpc_id
  subnet_id        = module.network.public_subnet_ids[0]
  public_key_path  = var.ssh_public_key_path
  allowed_ssh_cidr = var.allowed_ssh_cidr
}

module "ecr" {
  source       = "./modules/ecr"
  repositories = ["ivolve/frontend", "ivolve/auth-service", "ivolve/roadmap-service"]
}

module "eks" {
  source             = "./modules/eks"
  cluster_name       = var.cluster_name
  private_subnet_ids = module.network.private_subnet_ids
  public_subnet_ids  = module.network.public_subnet_ids
}
