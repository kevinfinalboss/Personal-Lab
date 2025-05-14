variable "kube_config_path" {
  description = "Caminho para o arquivo kubeconfig"
  type        = string
  default     = "~/.kube/config"
}

variable "namespace" {
  description = "Namespace onde o Argo CD será instalado"
  type        = string
  default     = "argocd"
}

variable "chart_version" {
  description = "Versão do Helm chart do Argo CD"
  type        = string
  default     = "8.0.1"
}

variable "ingress_enabled" {
  description = "Habilitar Ingress para o servidor Argo CD"
  type        = bool
  default     = true
}

variable "ingress_host" {
  description = "Hostname para o Ingress do Argo CD"
  type        = string
  default     = "argocd.kevindev.com.br"
}