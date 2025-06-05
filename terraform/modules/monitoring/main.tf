resource "helm_release" "prometheus" {
  name             = "kube-prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  namespace        = "monitoring"
  create_namespace = true
  values           = [file("${path.module}/../../helm/kube-prometheus-values.yml")]
  timeout          = 600   # increase from default (300s) to 600s
  wait             = true
  atomic           = true  # ensures rollback if install fails
  dependency_update = true
}
