resource "openstack_compute_instance_v2" "k8s_master" {
  name = var.server_name
  flavor_name = var.flavor
  key_pair = openstack_compute_keypair_v2.k8s_keypair.id
  block_device {
    uuid = openstack_blockstorage_volume_v3.k8s_master_volume.id
    source_type = "volume"
    destination_type = "volume"
    boot_index = 0
    delete_on_termination = true
  }
  network {
    port = openstack_networking_port_v2.k8s_master_port.id
  }
  metadata = {
    role = "k8s_master"
  }
  depends_on = [ openstack_networking_floatingip_associate_v2.assoc ]
}

resource "openstack_compute_instance_v2" "k8s_worker01" {
  name = var.worker01_name
  flavor_name = var.flavor
  key_pair = openstack_compute_keypair_v2.k8s_keypair.id
  block_device {
    uuid = openstack_blockstorage_volume_v3.k8s_worker01_volume.id
    source_type = "volume"
    destination_type = "volume"
    boot_index = 0
    delete_on_termination = true
  }
  network {
    port = openstack_networking_port_v2.k8s_worker01_port.id
  }
  metadata = {
    role = "k8s_worker01"
  }
}

resource "openstack_compute_instance_v2" "k8s_worker02" {
  name = var.worker02_name
  flavor_name = var.flavor
  key_pair = openstack_compute_keypair_v2.k8s_keypair.id
  block_device {
    uuid = openstack_blockstorage_volume_v3.k8s_worker02_volume.id
    source_type = "volume"
    destination_type = "volume"
    boot_index = 0
    delete_on_termination = true
  }
  network {
    port = openstack_networking_port_v2.k8s_worker02_port.id
  }
  metadata = {
    role = "k8s_worker02"
  }
}

resource "openstack_compute_instance_v2" "k8s_worker03" {
  name = var.worker03_name
  flavor_name = var.flavor
  key_pair = openstack_compute_keypair_v2.k8s_keypair.id
  block_device {
    uuid = openstack_blockstorage_volume_v3.k8s_worker03_volume.id
    source_type = "volume"
    destination_type = "volume"
    boot_index = 0
    delete_on_termination = true
  }
  network {
    port = openstack_networking_port_v2.k8s_worker03_port.id
  }
  metadata = {
    role = "k8s_worker03"
  }
}
