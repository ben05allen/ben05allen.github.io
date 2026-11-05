# Local development helpers — the site itself is built by GitHub Pages.
# Everything runs in Docker, so no Ruby is needed on the host.

COMPOSE ?= docker compose
SERVICE ?= site

.DEFAULT_GOAL := help

.PHONY: help install serve drafts build clean shell publish

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

install: ## Install/refresh gems inside the container
	$(COMPOSE) run --rm $(SERVICE) bundle install && $(COMPOSE) run --rm $(SERVICE) bundle exec jekyll --version

serve: ## Serve at http://localhost:4000 with live reload (published posts only)
	$(COMPOSE) up $(SERVICE)

drafts: ## Serve including _drafts/ and future-dated posts
	$(COMPOSE) run --rm --service-ports $(SERVICE) \
		jekyll serve --watch --force_polling --host 0.0.0.0 --drafts --future --livereload

build: ## Build the site into _site/ (production settings)
	$(COMPOSE) run --rm -e JEKYLL_ENV=production $(SERVICE) \
		jekyll build --trace

shell: ## Open a shell in the container
	$(COMPOSE) run --rm $(SERVICE) bash

clean: ## Remove build output and caches
	rm -rf _site .jekyll-cache .jekyll-metadata

publish: ## Commit everything and push to GitHub Pages
	git add -A
	git commit -m "Publish: $$(date -u '+%Y-%m-%d %H:%M UTC')" || echo "Nothing to commit."
	git push origin master
