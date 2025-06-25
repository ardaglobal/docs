.PHONY: help lint lint-fix serve build install-deps clean

# Default target
help:
	@echo "Available commands:"
	@echo "  make install-deps  Install project dependencies"
	@echo "  make lint          Run markdown linter"
	@echo "  make lint-fix      Run markdown linter and fix issues"
	@echo "  make serve         Serve documentation locally"
	@echo "  make build         Build documentation"
	@echo "  make clean         Clean build artifacts"

# Install dependencies
install-deps:
	@echo "Installing Python dependencies..."
	pip install -r requirements.txt
	@echo "Installing Node.js dependencies..."
	npm install

# Lint markdown files
lint:
	@echo "Linting markdown files..."
	npm run lint

# Lint and fix markdown files
lint-fix:
	@echo "Linting and fixing markdown files..."
	npm run lint:fix

# Serve documentation locally
serve:
	@echo "Starting local development server..."
	mkdocs serve

# Build documentation
build:
	@echo "Building documentation..."
	mkdocs build

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf site/