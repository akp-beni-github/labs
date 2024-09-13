resource "helm_release" "mysql" {
  name       = "mysql"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mysql"

  set {
    name  = "auth.database"
    value = "app"
  }

  set {
    name  = "auth.rootPassword"
    value = "password"
  }

  set {
    name  = "primary.service.port"
    value = "3307"
  }
}
