output "internal_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "internal_ip_address_vm_2" {
  value = yandex_compute_instance.vm-2.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

output "external_ip_address_vm_2" {
    value = yandex_compute_instance.vm-2.network_interface.0.nat_ip_address
}

output "balancer_ip" {
    value = yandex_alb_load_balancer.balancer.listener[0].endpoint[0].address[0].external_ipv4_address[0].address
}

output "db_host" {
    value = yandex_mdb_postgresql_cluster.db-cluster.host.0.fqdn
}