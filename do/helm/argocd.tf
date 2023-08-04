resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"

    annotations = {
      name = "argocd"
    }

    labels = {
      mylabel = "argocd"
    }
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  namespace  = kubernetes_namespace.argocd.id
  repository = "https://argoproj.github.io/argo-helm"
  depends_on = [
    kubernetes_namespace.argocd
  ]

  chart   = "argo-cd"
  version = "5.42.1"

  values = []
  # values = [
  #   templatefile("../values/argocd.yaml", {
  #     # example = "example"
  #   })
  # ]
}
