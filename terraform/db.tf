resource "yandex_mdb_postgresql_cluster" "db-cluster" {
  name        = "db-cluster"
  environment = "PRESTABLE"
  network_id  = yandex_vpc_network.network-1.id

  config {
    version = 15
    resources {
      resource_preset_id = "s2.micro"
      disk_type_id       = "network-ssd"
      disk_size          = "10"
    }
  }

  host {
    zone      = "ru-central1-a"
    name      = "db-host-a"
    subnet_id = yandex_vpc_subnet.subnet-1.id
  }
}

resource "yandex_mdb_postgresql_user" "redmine-user" {
  cluster_id = yandex_mdb_postgresql_cluster.db-cluster.id
  name       = var.db_user
  password   = var.db_password
}

resource "yandex_mdb_postgresql_database" "db" {
  cluster_id = yandex_mdb_postgresql_cluster.db-cluster.id
  name       = var.db_name
  owner      = yandex_mdb_postgresql_user.redmine-user.name
  depends_on = [
    yandex_mdb_postgresql_user.redmine-user
  ]
}