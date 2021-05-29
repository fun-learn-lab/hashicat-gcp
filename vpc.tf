module "network" {
  source       = "app.terraform.io/milind-terraform-training/network/google"
  version      = "3.2.2"
  network_name = "milind-network"
  project_id   = var.project
  subnets = [
    {
      subnet_name   = "milind-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
  # insert required variables here
}