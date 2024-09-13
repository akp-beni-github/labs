module "kind_cluster" {
  source = "../shared/terraform-modules/kind-cluster"

  cluster_name          = "kubernetes-problems"
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
      extra_port_mappings = {
        container_port = 30951
        host_port      = 3000
        listen_address = null
        protocol       = null
      }
    },
    {
      role                   = "worker"
      kubeadm_config_patches = []
      extra_port_mappings = {
        container_port = 30950
        host_port      = 8080
        listen_address = null
        protocol       = null
      }
    },
    {
      role = "worker"
      kubeadm_config_patches = [
        <<-EOF
          kind: JoinConfiguration
          nodeRegistration:
            kubeletExtraArgs:
              register-with-taints: node-role.kubernetes.io/database:NoSchedule
        EOF
      ]
      extra_port_mappings = null
    }
  ]
}
