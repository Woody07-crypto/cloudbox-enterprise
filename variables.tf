variable "project_name" {
  type        = string
  description = "Prefijo usado para los recursos de CloudBox."
  default     = "cloudbox"
}

variable "aws_region" {
  type        = string
  description = "Región de AWS donde se despliega la infraestructura."
  default     = "us-east-1"
}

variable "api_url" {
  type        = string
  description = "URL pública de la API de CloudBox."
  default     = "https://okl6xh3knd.execute-api.us-east-1.amazonaws.com/dev"
}

variable "user_pool_id" {
  type        = string
  description = "Identificador del Cognito User Pool."
  default     = "us-east-1_09GLAbLyS"
}

variable "client_id" {
  type        = string
  description = "Identificador del cliente de Cognito."
  default     = "1dqopf4kg1jdpehrcj5o8so8t6"
}
