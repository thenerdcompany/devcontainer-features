NAMESPACE ?= $(or $(GITHUB_REPOSITORY),coder/devcontainer-features)

.PHONY: test
test:
	devcontainer features test --filter "$$DEVCONTAINER_FEATURE_TEST_FILTER"

.PHONY: docs
docs: src/code-server/README.md
	cd src && devcontainer features generate-docs -n $(NAMESPACE)
