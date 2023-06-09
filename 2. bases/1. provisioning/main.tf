module "gitlab" {
  source = "./modules/gitlab"
}

module "jenkins-c" {
  source = "./modules/jenkins-c"
}

module "jenkins-s" {
  source = "./modules/jenkins-s"
}

module "keycloak" {
  source = "./modules/keycloak"
}

module "mysql" {
  source = "./modules/mysql"
}
