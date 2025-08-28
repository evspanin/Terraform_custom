data "openstack_images_image_v2" "ubuntu_server"{
  name = var.image_name
}