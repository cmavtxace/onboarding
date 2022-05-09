# spoke_transit_attachment.tf

resource "aviatrix_spoke_transit_attachment" "AWS_Region_1_PROD_SPOKE_AWS_Transit_att" {
  depends_on = [
    aviatrix_spoke_gateway.AWS_Region_1_PROD_SPOKE_GW,
    aviatrix_transit_gateway.AWS_Transit_USE2_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.AWS_Region_1_PROD_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.AWS_Transit_USE2_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "AWS_Region_1_SHARED_SPOKE_AWS_Transit_att" {
  depends_on = [
    aviatrix_spoke_gateway.AWS_Region_1_SHARED_SPOKE_GW,
    aviatrix_transit_gateway.AWS_Transit_USE2_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.AWS_Region_1_SHARED_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.AWS_Transit_USE2_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "AWS_Region_1_DEV_SPOKE_AWS_Transit_att" {
  depends_on = [
    aviatrix_spoke_gateway.AWS_Region_1_DEV_SPOKE_GW,
    aviatrix_transit_gateway.AWS_Transit_USE2_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.AWS_Region_1_DEV_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.AWS_Transit_USE2_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "AWS_Region_2_QA1_SPOKE_AWS_Transit_USW2_att" {
  depends_on = [
    aviatrix_spoke_gateway.AWS_Region_2_QA1_SPOKE_GW,
    aviatrix_transit_gateway.AWS_Transit_USW2_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.AWS_Region_2_QA1_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.AWS_Transit_USW2_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "AWS_Region_2_QA2_SPOKE_AWS_Transit_USW2_att" {
  depends_on = [
    aviatrix_spoke_gateway.AWS_Region_2_QA2_SPOKE_GW,
    aviatrix_transit_gateway.AWS_Transit_USW2_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.AWS_Region_2_QA2_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.AWS_Transit_USW2_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "Azure_Prod_SPOKE_Azure_Transit_Firenet_att" {
  depends_on = [
    aviatrix_spoke_gateway.Azure_Prod_SPOKE_GW,
    aviatrix_transit_gateway.Azure_Transit_Firenet_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.Azure_Prod_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.Azure_Transit_Firenet_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "Azure_Shared_SPOKE_Azure_Transit_Firenet_att" {
  depends_on = [
    aviatrix_spoke_gateway.Azure_Shared_SPOKE_GW,
    aviatrix_transit_gateway.Azure_Transit_Firenet_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.Azure_Shared_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.Azure_Transit_Firenet_GW.gw_name
}

resource "aviatrix_spoke_transit_attachment" "Azure_QandA_SPOKE_Azure_Egress_Firenet_att" {
  depends_on = [
    aviatrix_spoke_gateway.Azure_QandA_SPOKE_GW,
    aviatrix_transit_gateway.Azure_Egress_Firenet_GW
  ]
  spoke_gw_name = aviatrix_spoke_gateway.Azure_QandA_SPOKE_GW.gw_name
  transit_gw_name = aviatrix_transit_gateway.Azure_Egress_Firenet_GW.gw_name
}