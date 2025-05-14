output "argocd_namespace" {
  description = "Namespace onde o Argo CD foi instalado"
  value       = kubernetes_namespace.argocd.metadata[0].name
}

output "argocd_server_service" {
  description = "Nome do serviço do servidor Argo CD"
  value       = "argocd-server"
}

output "argocd_server_url" {
  description = "URL para acessar a interface do Argo CD via Ingress"
  value       = var.ingress_enabled ? "https://${var.ingress_host}" : "https://argocd-server.${kubernetes_namespace.argocd.metadata[0].name}.svc.cluster.local"
}