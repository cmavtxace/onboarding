# transit_gateway.tf

resource "aviatrix_transit_gateway" "AWS_Transit_USE2_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Transit
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Transit.public_subnets[1].cidr
  ha_gw_size = var.transit_gw_size
  gw_name = "AWS-Transit-USE2-GW"
  vpc_id = aviatrix_vpc.AWS_Transit.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_useast2
  gw_size = var.transit_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Transit.public_subnets[0].cidr
  enable_encrypt_volume = true
  connected_transit        = true
}

resource "aviatrix_transit_gateway" "AWS_Transit_USW2_GW" {
  depends_on = [
    aviatrix_vpc.AWS_Region_2_Transit
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_Region_2_Transit.public_subnets[1].cidr
  ha_gw_size = var.transit_gw_size
  gw_name = "AWS-Transit-USW2-GW"
  vpc_id = aviatrix_vpc.AWS_Region_2_Transit.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_uswest2
  gw_size = var.transit_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_Region_2_Transit.public_subnets[0].cidr
  enable_encrypt_volume = true
  connected_transit        = true
}

resource "aviatrix_transit_gateway" "AWS_TGW_FIRENET_USE2_GW" {
  depends_on = [
    aviatrix_vpc.AWS_TGW_Firenet
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.AWS_TGW_Firenet.public_subnets[1].cidr
  ha_gw_size = var.transit_gw_size
  gw_name = "AWS-TGW-FIRENET-USE2-GW"
  vpc_id = aviatrix_vpc.AWS_TGW_Firenet.vpc_id
  cloud_type = 1
  vpc_reg = var.aws_useast2
  gw_size = var.transit_gw_size
  account_name = var.account_name
  subnet = aviatrix_vpc.AWS_TGW_Firenet.public_subnets[0].cidr
  enable_encrypt_volume = true
  connected_transit        = true
}

resource "aviatrix_transit_gateway" "Azure_Transit_Firenet_GW" {
  depends_on = [
    aviatrix_vpc.Azure_Transit_Firenet
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_Transit_Firenet.public_subnets[1].cidr
  ha_gw_size = var.firenet_gw_size
  gw_name = "Azure-Transit-Firenet-GW"
  vpc_id = aviatrix_vpc.Azure_Transit_Firenet.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.firenet_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_Transit_Firenet.public_subnets[0].cidr
  enable_transit_firenet = true
  connected_transit        = true
}

resource "aviatrix_transit_gateway" "Azure_Egress_Firenet_GW" {
  depends_on = [
    aviatrix_vpc.Azure_Egress_Firenet
  ]
  single_az_ha = true
  ha_subnet = aviatrix_vpc.Azure_Egress_Firenet.public_subnets[1].cidr
  ha_gw_size = var.firenet_gw_size
  gw_name = "Azure-Egress-Firenet-GW"
  vpc_id = aviatrix_vpc.Azure_Egress_Firenet.vpc_id
  cloud_type = 8
  vpc_reg = var.azure_eastus
  gw_size = var.firenet_gw_size
  account_name = var.azure_account_name
  subnet = aviatrix_vpc.Azure_Egress_Firenet.public_subnets[0].cidr
  enable_transit_firenet = true
  connected_transit        = true
}