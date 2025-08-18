
# templates/multi-cloud-project/main.tf
# Main Terraform configuration for a multi-cloud Tero project

module "tero" {
  source = "../../modules"

  # AWS configurations
  lambda_function_name = var.aws_lambda_function_name
  lambda_role_arn      = module.tero.iam_role_arn
  vpc_cidr_block       = var.aws_vpc_cidr_block
  subnet_count         = var.aws_subnet_count
  rds_engine           = var.aws_rds_engine
  rds_instance_class   = var.aws_rds_instance_class
  rds_allocated_storage = var.aws_rds_allocated_storage
  rds_db_username      = var.aws_rds_db_username
  rds_db_password      = var.aws_rds_db_password
  iam_role_name        = var.aws_iam_role_name
  iam_policy_arns      = var.aws_iam_policy_arns
  kms_key_alias        = var.aws_kms_key_alias
  kms_key_description  = var.aws_kms_key_description
  env                  = var.environment
}

# Azure Virtual Machine (example resource)
resource "azurerm_virtual_machine" "main" {
  name                  = "${var.environment}-vm"
  location              = var.azure_location
  resource_group_name   = var.azure_resource_group
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.azure_vm_size

  storage_os_disk {
    name              = "osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "${var.environment}-vm"
    admin_username = var.azure_admin_username
    admin_password = var.azure_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

# Azure Network Interface (example)
resource "azurerm_network_interface" "main" {
  name                = "${var.environment}-nic"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.azure_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# GCP Compute Instance (example resource)
resource "google_compute_instance" "main" {
  name         = "${var.environment}-instance"
  machine_type = var.gcp_machine_type
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.gcp_network
    access_config {}
  }
}

/*

**Description**: Configures a multi-cloud project with AWS (Lambda, RDS, VPC, IAM, KMS), Azure (VM, NIC), and GCP (Compute Instance) resources.

**Use Cases**:
- Bootstrapping multi-cloud applications.
- Supporting hybrid cloud architectures.
- Demonstrating Tero’s flexibility across providers. */