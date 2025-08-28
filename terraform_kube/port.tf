resource "openstack_networking_port_v2" "k8s_master_port" {
  name = "${var.server_name}_port"
  network_id = openstack_networking_network_v2.k8s_network.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s_subnet.id
    ip_address = var.server_fixed_ip
  }
  security_group_ids = [openstack_networking_secgroup_v2.k8s_sg.id]
}

resource "openstack_networking_port_v2" "k8s_worker01_port" {
  name = "${var.worker01_name}_port"
  network_id = openstack_networking_network_v2.k8s_network.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s_subnet.id
    ip_address = var.worker01_fixed_ip
  }
  security_group_ids = [openstack_networking_secgroup_v2.k8s_sg.id]
}

resource "openstack_networking_port_v2" "k8s_worker02_port" {
  name = "${var.worker02_name}_port"
  network_id = openstack_networking_network_v2.k8s_network.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s_subnet.id
    ip_address = var.worker02_fixed_ip
  }
  security_group_ids = [openstack_networking_secgroup_v2.k8s_sg.id]
}

resource "openstack_networking_port_v2" "k8s_worker03_port" {
  name = "${var.worker03_name}_port"
  network_id = openstack_networking_network_v2.k8s_network.id
  fixed_ip {
    subnet_id = openstack_networking_subnet_v2.k8s_subnet.id
    ip_address = var.worker03_fixed_ip
  }
  security_group_ids = [openstack_networking_secgroup_v2.k8s_sg.id]
}