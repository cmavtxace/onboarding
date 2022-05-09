resource "aviatrix_vpc" "AWS_Region_1_PROD" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-1-PROD"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.aws_useast2
  cidr = "10.10.1.0/24"
}

resource "aviatrix_vpc" "AWS_Region_1_SHARED" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-1-SHARED"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.aws_useast2
  cidr = "10.10.2.0/24"
}

resource "aviatrix_vpc" "AWS_Region_1_DEV" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-1-DEV"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.aws_useast2
  cidr = "10.10.3.0/24"
}

resource "aviatrix_vpc" "AWS_TGW_Firenet" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-TGW-Firenet"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
  region = var.aws_useast2
  cidr = "10.101.0.0/16"
}

resource "aviatrix_vpc" "AWS_Transit" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Transit"
  aviatrix_transit_vpc = true
  aviatrix_firenet_vpc = false
  region = var.aws_useast2
  cidr = "10.102.0.0/16"
}

resource "aviatrix_vpc" "AWS_Region_2_QA1" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-2-QA1"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.aws_uswest2
  cidr = "10.20.1.0/24"
}

resource "aviatrix_vpc" "AWS_Region_2_QA2" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-2-QA2"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.aws_uswest2
  cidr = "10.20.2.0/24"
}

resource "aviatrix_vpc" "AWS_Region_2_Transit" {
  cloud_type = 1
  account_name = var.account_name
  name = "AWS-Region-2-Transit"
  aviatrix_transit_vpc = true
  aviatrix_firenet_vpc = false
  region = var.aws_uswest2
  cidr = "10.201.0.0/16"
}

resource "aviatrix_vpc" "Azure_Shared" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-Shared"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.azure_eastus
  cidr = "10.30.1.0/24"
}

resource "aviatrix_vpc" "Azure_Prod" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-Prod"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.azure_eastus
  cidr = "10.40.1.0/24"
}

resource "aviatrix_vpc" "Azure_Development" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-Development"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.azure_eastus
  cidr = "10.50.1.0/24"
}

resource "aviatrix_vpc" "Azure_QandA" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-QandA"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = false
  region = var.azure_eastus
  cidr = "10.60.1.0/24"
}

resource "aviatrix_vpc" "Azure_Transit_Firenet" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-Transit-Firenet"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
  region = var.azure_eastus
  cidr = "10.31.0.0/16"
}

resource "aviatrix_vpc" "Azure_Egress_Firenet" {
  cloud_type = 8
  account_name = var.azure_account_name
  name = "Azure-Egress-Firenet"
  aviatrix_transit_vpc = false
  aviatrix_firenet_vpc = true
  region = var.azure_eastus
  cidr = "10.32.0.0/16"
}
