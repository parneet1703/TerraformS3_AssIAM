module "iamgroup" {
  source  = "../iamgroup"
  #gpname = "Parneet-gp1"
  gpname = var.grouplist
}

module "iamuser" {
  source = "../iamuser"
  username = var.userlist
}

module "iammembership" {
  source = "../iammember"
  username = var.userlist
  gpname = var.grouplist
  depends_on = [
    module.iamuser,
    module.iamgroup
  ]
}