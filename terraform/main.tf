module "network" {
  source       = "./modules/network"
  name         = var.project_name
  azs          = var.azs
  cluster_name = var.cluster_name
}
