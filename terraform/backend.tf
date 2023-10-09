terraform {
    backend "s3" {
    endpoint          = "storage.yandexcloud.net"
    region            = "ru-central1"
    key               = "yc-terraform-state-remote"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}