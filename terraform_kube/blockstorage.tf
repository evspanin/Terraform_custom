resource "openstack_blockstorage_volume_v3" "k8s_master_volume" {
  name = "${var.server_name}_volume"
  size = 20
  image_id = data.openstack_images_image_v2.ubuntu_server.id
  volume_type = "__DEFAULT__"
}

resource "openstack_blockstorage_volume_v3" "k8s_worker01_volume" {
  name = "${var.worker01_name}_volume"
  size = 20
  image_id = data.openstack_images_image_v2.ubuntu_server.id
  volume_type = "__DEFAULT__"
}

resource "openstack_blockstorage_volume_v3" "k8s_worker02_volume" {
  name = "${var.worker02_name}_volume"
  size = 20
  image_id = data.openstack_images_image_v2.ubuntu_server.id
  volume_type = "__DEFAULT__"
}

resource "openstack_blockstorage_volume_v3" "k8s_worker03_volume" {
  name = "${var.worker03_name}_volume"
  size = 20
  image_id = data.openstack_images_image_v2.ubuntu_server.id
  volume_type = "__DEFAULT__"
}