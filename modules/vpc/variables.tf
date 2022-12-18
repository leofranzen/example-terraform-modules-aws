variable "env" {
  type        = string
  description = "Ambiente de produção exemplo: dev, test, prod"
}
variable "name" {
  type        = string
  description = "Nome da VPC que será concatenado com a var.env"
}
variable "cidr" {
  type        = string
  description = "Bloco CIDR da VPC"
}

variable "azs" {
  type        = list(string)
  description = "Lista das zonas de disponibilidades das subnets"
}
variable "public_subnets" {
  type        = list(string)
  description = "Lista do bloco CIDR das subredes públicas"
}
variable "private_subnets" {
  type        = list(string)
  description = "Lista do bloco CIDR das subredes privadas"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "Habilita suporte ao DNS"
}
variable "enable_dns_hostnames" {
  type        = bool
  default     = true
  description = "Habilita suporte para nome do host DNS"
}

variable "enable_nat_gateway" {
  type        = bool
  default     = true
  description = "Habilita NAT Gateway"
}
variable "single_nat_gateway" {
  type        = bool
  default     = false
  description = "Habilita apenas um NAT Gateway"
}
variable "one_nat_gateway_per_az" {
  type        = bool
  default     = false
  description = "Habilita apenas um NAT Gateway por zona de disponibilidade"
}
