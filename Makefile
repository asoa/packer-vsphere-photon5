
# Source environment file and export variables
include .env
export

# Define variables
TEMPLATE = $$path_to_template
VAR_FILE = $$path_to_var_file

# Define targets
.PHONY: validate build

validate:
	@echo "Validating template: $(TEMPLATE)"
	packer validate --var-file=$(VAR_FILE) $(TEMPLATE)	

replace_tokens:
	@echo "Replacing tokens in template: $(TEMPLATE)"
	scripts/makefile_scripts/replace_tokens.sh

build:
	@echo "Building template: $(TEMPLATE)"
	packer build --var-file=$(VAR_FILE) $(TEMPLATE)

cleanup:
	@echo "Restoring original template: $(TEMPLATE)" to prepare for next build
	scripts/makefile_scripts/restore_template.sh

main: validate build cleanup

