resource "openstack_networking_floatingip_v2" "k8s_master_fip" {
  pool = var.floating_pool
  depends_on = [ openstack_networking_router_interface_v2.k8s_router_iface ]
}

resource "openstack_networking_floatingip_associate_v2" "assoc" {
  floating_ip = openstack_networking_floatingip_v2.k8s_master_fip.address
  port_id = openstack_networking_port_v2.k8s_master_port.id
}