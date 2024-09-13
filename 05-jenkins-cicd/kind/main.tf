module "kind_cluster" {
  source = "../../shared/terraform-modules/kind-cluster"

  cluster_name          = "cicd-creator"
  enable_metrics_server = true
  enable_loadbalancer = true
}


