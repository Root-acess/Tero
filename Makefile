.PHONY: init format validate docs test clean

init:
	@echo "Initializing Tero environment"
	@./scripts/init.sh

format:
	@echo "Formatting Terraform code"
	@./scripts/format.sh

validate:
	@echo "Validating Terraform configurations"
	@./scripts/validate.sh

docs:
	@echo "Generating documentation"
	@./scripts/update-docs.sh

test:
	@echo "Running tests"
	@./scripts/test-module.sh

clean:
	@echo "Cleaning up temporary files"
	@find . -name ".terraform" -exec rm -rf {} +
	@find . -name ".terraform.lock.hcl" -delete
