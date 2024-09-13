module "kind_cluster" {
  source = "../shared/terraform-modules/kind-cluster"

  cluster_name          = "kubernetes-basic"
  enable_metrics_server = true
  enable_loadbalancer   = false

  nodes = [
    {
      role                   = "control-plan"
      kubeadm_config_patches = []
      extra_port_mappings    = null
    },
    {
      role                   = "worker"
      kubeadm_config_patches = []
      extra_port_mappings    = null
    },
    {
      role                   = "worker"
      kubeadm_config_patches = []
      extra_port_mappings    = null
    }
  ]
}
