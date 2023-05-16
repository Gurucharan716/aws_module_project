# dev 
module "dev" {
  source = "./my_app_infra_module"
  my_env = "dev"
  instance_type = "t2.micro"
  ami = "ami-007855ac798b5175e"
}

# prd 
module "prd" {
  source = "./my_app_infra_module"
  my_env = "prd"
  instance_type = "t2.micro"
  ami = "ami-007855ac798b5175e"
}

# stg 
module "stg" {
  source = "./my_app_infra_module"
  my_env = "stg"
  instance_type = "t2.micro"
  ami = "ami-007855ac798b5175e"
}