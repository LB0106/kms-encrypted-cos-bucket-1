##############################################################################
# Terraform Providers
##############################################################################

terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.19.0"
    }
  }
}

##############################################################################


##############################################################################
# IBM Cloud Provider
##############################################################################

provider ibm {
  ibmcloud_api_key      = var.ibmcloud_api_key
  region                = var.ibm_region
  ibmcloud_timeout      = 60
}

##############################################################################

##############################################################################
# Resource Group where resources are created
##############################################################################

data ibm_resource_group resource_group {
  name = var.resource_group
}

##############################################################################