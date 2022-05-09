# transit_peering01.tf

resource "aviatrix_transit_gateway_peering" "transit_gateway_peering_1" {
    transit_gateway_name1 = "AWS-Transit-USW2-GW"
    transit_gateway_name2 = "Azure-Transit-Firenet-GW"
}
