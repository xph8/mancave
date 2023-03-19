scripts="${HOME}/scripts"
dotfiles="${HOME}/.dotfiles"

help: ## Print this help message
	@grep -E '^[a-zA-Z._-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

dotup:
	cp /etc/apt/sources.list ${dotfiles}/apt/sources.list
