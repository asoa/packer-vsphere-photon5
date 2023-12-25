
# Source environment file and export variables
include .env
export

# Define variables
TEMPLATE = $$path_to_template

# Define targets
.PHONY: validate build

validate:
	@echo "Validating template: $(TEMPLATE)"
	packer validate $(TEMPLATE)	

build:
# packer build $(TEMPLATE)
