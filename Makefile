```makefile
# Makefile
# Build automation tasks for the Tero Framework

.PHONY: all init deploy destroy format validate test clean

all: init deploy

init:
	./services/init.sh --project-name test-project --env dev --template basic-project

deploy:
	./services/deploy.sh --env dev

destroy:
	./services/destroy.sh --env dev

format:
	./services/format.sh

validate:
	./services/validate.sh --env dev

test:
	./services/test-module.sh --module compute --env dev --example basic

clean:
	rm -rf test-project
```

**Description**: Defines Makefile targets for common Tero tasks.

**Use Cases**:
- Automating project workflows with `make`.
- Simplifying command execution for developers.
- Supporting CI/CD integration.