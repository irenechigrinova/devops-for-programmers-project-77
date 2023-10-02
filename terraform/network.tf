resource "yandex_vpc_network" "network-1" {
  name = "network1"
  folder_id = var.folder_id
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
  folder_id = var.folder_id
}