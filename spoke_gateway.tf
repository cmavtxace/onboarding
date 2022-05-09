# spoke_gateway.tf

resource "aviatrix_spoke_gateway" "AWS_Region_1_PROD_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_1_PROD
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Region_1_PROD.public_subnets[1].cidr
  ha_gw_size = var.spoke_gw_size
  gw_name = "AWS-Region-1-PROD-SPOKE-GW"
  vpc_id = aviatrix_vpc.AWS_Region_1_PROD.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_useast2
  gw_size = var.spoke_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_1_PROD.public_subnets[0].cidr
  enable_encrypt_volume = true
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "AWS_Region_1_SHARED_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_1_SHARED
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Region_1_SHARED.public_subnets[1].cidr
  ha_gw_size = var.spoke_gw_size
  gw_name = "AWS-Region-1-SHARED-SPOKE-GW"
  vpc_id = aviatrix_vpc.AWS_Region_1_SHARED.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_useast2
  gw_size = var.spoke_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_1_SHARED.public_subnets[0].cidr
  enable_encrypt_volume = true
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "AWS_Region_1_DEV_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_1_DEV
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Region_1_DEV.public_subnets[1].cidr
  ha_gw_size = var.spoke_gw_size
  gw_name = "AWS-Region-1-DEV-SPOKE-GW"
  vpc_id = aviatrix_vpc.AWS_Region_1_DEV.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_useast2
  gw_size = var.spoke_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_1_DEV.public_subnets[0].cidr
  enable_encrypt_volume = true
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "AWS_Region_2_QA1_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_2_QA1
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Region_2_QA1.public_subnets[1].cidr
  ha_gw_size = var.spoke_gw_size
  gw_name = "AWS-Region-2-QA1-SPOKE-GW"
  vpc_id = aviatrix_vpc.AWS_Region_2_QA1.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_uswest2
  gw_size = var.spoke_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_2_QA1.public_subnets[0].cidr
  enable_encrypt_volume = true
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "AWS_Region_2_QA2_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_2_QA2
  ]
  single_az_ha = false
  ha_subnet = aviatrix_vpc.AWS_Region_2_QA2.public_subnets[1].cidr
  ha_gw_size = var.spoke_gw_size
  gw_name = "AWS-Region-2-QA2-SPOKE-GW"
  vpc_id = aviatrix_vpc.AWS_Region_2_QA2.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_uswest2
  gw_size = var.spoke_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_2_QA2.public_subnets[0].cidr
  enable_encrypt_volume = true
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "Azure_Shared_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.Azure_Shared
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_Shared.public_subnets[1].cidr
  ha_gw_size = var.azure_spoke_gw_size
  gw_name = "Azure-Shared-SPOKE-GW"
  vpc_id = aviatrix_vpc.Azure_Shared.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.azure_spoke_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_Shared.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "Azure_Prod_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.Azure_Prod
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_Prod.public_subnets[1].cidr
  ha_gw_size = var.azure_spoke_gw_size
  gw_name = "Azure-Prod-SPOKE-GW"
  vpc_id = aviatrix_vpc.Azure_Prod.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.azure_spoke_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_Prod.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "Azure_Development_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.Azure_Development
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_Development.public_subnets[1].cidr
  ha_gw_size = var.azure_spoke_gw_size
  gw_name = "Azure-Development-SPOKE-GW"
  vpc_id = aviatrix_vpc.Azure_Development.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.azure_spoke_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_Development.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
}

resource "aviatrix_spoke_gateway" "Azure_QandA_SPOKE_GW" {
  depends_on = [
    aviatrix_vpc.Azure_QandA
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_QandA.public_subnets[1].cidr
  ha_gw_size = var.azure_spoke_gw_size
  gw_name = "Azure-QandA-SPOKE-GW"
  vpc_id = aviatrix_vpc.Azure_QandA.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.azure_spoke_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_QandA.public_subnets[0].cidr
  manage_transit_gateway_attachment = false
}
