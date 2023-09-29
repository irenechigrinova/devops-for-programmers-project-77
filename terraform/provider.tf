terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint          = "storage.yandexcloud.net"
    region            = "ru-central1"
    key               = "terraform-remote-state"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  zone = "ru-central1-a"
  token = var.yc_token
}