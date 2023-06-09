module "frontend1" {
  source = "./modules/frontend1"
}

module "frontend2" {
  source = "./modules/frontend2"
}

module "haproxy" {
  source = "./modules/haproxy"
}

module "slave-b" {
  source = "./modules/slave-b"
}

module "slave-f" {
  source = "./modules/slave-f"
}

module "wordpress" {
  source = "./modules/wordpress"
}
