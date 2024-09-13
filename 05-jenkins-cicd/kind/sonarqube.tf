resource "helm_release" "int-sonarqube" {
  name = "sonar"

  repository = "https://SonarSource.github.io/helm-chart-sonarqube"
  chart = "sonarqube/sonarqube"
  version = "7.0.0+449"

  set {
    name = "service.type"
    value = "ClusterIP"
  }

  set {
    name = "persistence.enabled"
    value = "true"
  }

  set {
    name = "persistence.storageClass"
    value = "standard"
  }
}