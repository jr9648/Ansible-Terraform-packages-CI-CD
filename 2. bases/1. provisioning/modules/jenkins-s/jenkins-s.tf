resource "proxmox_lxc" "Jenkins-s" {
  target_node  = "ajaya-alpha"
  hostname     = "Jenkins-s"
  ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst" 
  password     = "password"
  cores        = 1
  memory       = 2048
  swap         = 1024
  unprivileged = true
  start        = true

  rootfs {
    storage = "local-zfs"
    size    = "20G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr1"
    ip     = "192.168.1.82/24"
    gw     = "192.168.1.1"
    ip6    = "auto"
  }


  ssh_public_keys = <<-EOT
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDtEgLMgl+iR/nqD9T7QHBvFhv15LjU77PmZdgBuZWQ4K0u+S3d8Ljn0dNQUjqkG/Lg67fXNwoIe+2OY2ok/hfWYX8+EzMZWVhW7P7yw02NzBtiq45yfLRKsdajh8R/zRbHiOZDm1kRts+IQ+XGJtBgIb+i4HYZDfd4HYg+CeDQD06YS36IBAsePPh1T8ECHWRy+vJPV4OdM9OMdv1aG/ss4J6PiZ4ZavmCH81gJfXPwV7SDg2+4p/XQgR7K1y60M3+q+XxDGl3tofEswr9k5olOlqZN0zGGFlYJ/tGy1l6qbl0KbqoZOcXA4T0b7bJHOLgtrTwnxUS5fn+Zg1+ylHURvdLCEjWzH2e/NO2KTZlzPCQ+VQEJVo6XOBhPlsnW7O+60vkVAAYWhNuwyUvJR91bkQ4yjChFkO70sVioAtnHn7fWlpCu8ZmiQG5iiHCkOLFoAaBzPjGuWnT8MQZwIHXpCMjgprU+hBoJh1UaUkg/NmkoU1VfV0bByMz4F1lBzU= root@AT-controller
  EOT
}
