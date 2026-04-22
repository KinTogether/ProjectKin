# Kin developer Makefile
# Common commands for local development.

SHELL := /bin/bash
.PHONY: help bootstrap up down logs db-reset db-migrate db-seed mobile-run mobile-test mobile-lint fmt lint test ci clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}'

bootstrap: ## Copy .env.example -> .env if missing
	@test -f .env || cp .env.example .env && echo "Created .env from template. Edit it before running."

up: ## Start local Supabase stack
	docker compose up -d

down: ## Stop local stack
	docker compose down

logs: ## Tail local stack logs
	docker compose logs -f --tail=200

db-reset: ## Drop and recreate the local DB
	docker compose down -v && docker compose up -d

db-migrate: ## Apply Supabase migrations
	@cd supabase && supabase db push || echo "Install supabase CLI: https://supabase.com/docs/guides/cli"

db-seed: ## Seed local DB with development data
	@test -f supabase/seed.sql && psql "$$DATABASE_URL" -f supabase/seed.sql || echo "No seed file yet"

mobile-run: ## Run the Flutter app on the connected device
	cd mobile && flutter run

mobile-test: ## Run Flutter tests
	cd mobile && flutter test

mobile-lint: ## Analyze and format check the Flutter code
	cd mobile && dart format --output=none --set-exit-if-changed . && flutter analyze

fmt: ## Format all code
	cd mobile && dart format .

lint: mobile-lint ## Run all linters

test: mobile-test ## Run all tests

ci: lint test ## What CI runs

clean: ## Clean build artifacts
	cd mobile && flutter clean
