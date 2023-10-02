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

resource "local_file" "tf_ansible_vars" {
  content = <<-DOC
    # Ansible vars_file containing variable values from Terraform.
    # Generated by Terraform mgmt configuration.

    app_port: 80
    redmine_version: latest
    
    db_host: ${yandex_mdb_postgresql_cluster.db-cluster.host.0.fqdn}
    db_username: ${var.db_user}
    db_password: ${var.db_password}
    db_name: ${var.db_name}

    dd_api_key: ${var.dd_api_key}

    vm1_ip: ${yandex_compute_instance.vm-1.network_interface.0.nat_ip_address}
    vm2_ip: ${yandex_compute_instance.vm-2.network_interface.0.nat_ip_address}
    vm1_user: ubuntu
    vm2_user: ubuntu
    DOC
  filename = "../ansible/group_vars/all/tf_ansible_vars.yml"
}