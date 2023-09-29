resource "yandex_alb_target_group" "balancer-target-group" {
  name = "balancer-target-group"

  target {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    ip_address = yandex_compute_instance.vm-1.network_interface.0.ip_address
  }

  target {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    ip_address = yandex_compute_instance.vm-2.network_interface.0.ip_address
  }
}

resource "yandex_alb_backend_group" "balancer-backend-group" {
  name = "balancer-backend-group"

  http_backend {
    name = "balancer-http-backend"
    weight = 1
    port = var.app_port
    target_group_ids = [yandex_alb_target_group.balancer-target-group.id]
    load_balancing_config {
      panic_threshold = 50
    }
    healthcheck {
      timeout = "1s"
      interval = "1s"
      http_healthcheck {
        path = "/"
      }
    }
  }
}

resource "yandex_alb_http_router" "balancer-router" {
  name = "balancer-router"
}

resource "yandex_alb_load_balancer" "balancer" {
  name = "balancer"
  network_id = yandex_vpc_network.network-1.id
  allocation_policy {
    location {
      zone_id = "ru-central1-a"
      subnet_id = yandex_vpc_subnet.subnet-1.id
    }
  }

  listener {
    name = "balancer-listener"
    endpoint {
      address {
        external_ipv4_address {
        }
      }
      ports = [80]
    }
    http {
      handler {
        http_router_id = yandex_alb_http_router.balancer-router.id
      }
    }
  }

}

resource "yandex_alb_virtual_host" "balancer-virtual-host" {
  name = "balancer-virtual-host"
  http_router_id = yandex_alb_http_router.balancer-router.id
  route {
    name = "balancer-router"
    http_route {
      http_route_action {
        backend_group_id = yandex_alb_backend_group.balancer-backend-group.id
        timeout = "5s"
      }
    }
  }
}