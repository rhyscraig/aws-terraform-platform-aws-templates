################################################################################
# AVM Platform Orchestrator
# This file calls all the foundational modules for the platform.
################################################################################

module "control_tower" {
  source = "./terraform/control_tower"

  # Pass root variables down to the module
  region       = var.region
  default_tags = var.default_tags
}

# Add other modules for identity, networking, etc. here as they are developed.
# module "networking" { ... }
# module "identity" { ... }