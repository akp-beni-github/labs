resource "helm_release" "jenkins_master" {
  name = "interview_jenkins"

  repository = "https://charts.jenkins.io"
  chart = "jenkins/jenkins"
  version = "4.3.0"

  set {
    name = "persistence.storageClass"
    value = "standard"
  }

  set {
    name = "adminPassword"
    value = "P@ssw0rd"
  }

  set {
    name = "serviceType"
    value = "ClusterIP"
  }
}
