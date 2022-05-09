# variables.tf
variable "controller_ip" {
  type        = string
  description = "IP address of the Aviatrix Controller"
}

variable "controller_username" {
  type        = string
  description = "Username for the Aviatrix Controller"
}

variable "controller_password" {
  type        = string
  description = "Password for the Aviatrix Controller"
}

variable "account_name" {
  type        = string
  description = "Account Name for the Aviatrix Controller"
  default     = "aws"
}

variable "aws_useast2" {
  type        = string
  description = "Location for resources"
  default     = "us-east-2"
}

variable "aws_uswest2" {
  type        = string
  description = "Location for resources"
  default     = "us-west-2"
}

variable "azure_account_name" {
  type        = string
  description = "Azure ARM account name in the Aviatrix Controller"
}

variable "azure_eastus" {
  type        = string
  description = "Location for resources"
  default     = "East US"
}

variable "transit_gw_size" {
  type        = string
  description = "Transit Gateway Instance Size"
  default     = "t2.medium"
}

variable "spoke_gw_size" {
  type        = string
  description = "Spoke Gateway Instance Size"
  default     = "t2.micro"
}

variable "fqdn_spoke_gw_size" {
  type        = string
  description = "Spoke Gateway Instance Size"
  default     = "t3.micro"
}

variable "azure_westus" {
  type        = string
  description = "Location for resources"
  default     = "West US"
}

variable "firenet_gw_size" {
  type        = string
  description = "Firenet Gateway Instance Size"
  default     = "Standard_B4ms"
}

variable "azure_spoke_gw_size" {
  type        = string
  description = "Spoke Gateway Instance Size"
  default     = "Standard_B1ms"
}