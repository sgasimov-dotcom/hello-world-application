## Terraform configuration to deploy hello world application
module "academy-deploy" {
  source  = "fuchicorp/chart/helm"

  ## Version of module is hard coded using helm3
  version = "0.0.8"

  ## The helm release name 
  deployment_name        = "hello-world"

  ## Deployment environment kubernetes namespace
  deployment_environment = "${var.deployment_environment}"

  ## Deployment endpoint to see hello world application 
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"

  ## Deployment path which is local chart location 
  deployment_path        = "hello-world"

  ## Custom vars if you would like to customize helm chart
  template_custom_vars  = {
    deployment_image        = "${var.deployment_image}"
    deployment_environment  = "${var.deployment_environment}"
  }
} 

## Terraform output for hello world
output "application_endpoint" {
    value = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}.${var.google_domain_name}"
}