##@ Help
.PHONY: help

help: ## Show help
	@echo "\nUsage: \e[1;36mmake [target]\e[0m\n"
	@awk 'BEGIN {FS = ":.*## "} \
			/^[a-zA-Z0-9_-]+:.*## / { printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2 } \
			/^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
