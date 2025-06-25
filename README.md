# Arda Documentation

This repository contains the documentation for the Arda project, built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Quick Start

1. **Install dependencies:**
   ```bash
   make install-deps
   ```

2. **Serve locally:**
   ```bash
   make serve
   ```

3. **Build documentation:**
   ```bash
   make build
   ```

## Available Commands

- `make help` - Show available commands
- `make install-deps` - Install project dependencies
- `make lint` - Run markdown linter
- `make lint-fix` - Run markdown linter and fix issues automatically
- `make serve` - Serve documentation locally at http://127.0.0.1:8000
- `make build` - Build documentation to `site/` directory
- `make clean` - Clean build artifacts

## Linting

This project uses [markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2) to ensure consistent markdown formatting. The linting rules are configured in `.markdownlint-cli2.yaml`.

### Running Linting

```bash
# Check for linting issues
make lint

# Automatically fix linting issues where possible
make lint-fix
```

### Linting Rules

The project uses a customized set of rules appropriate for documentation:

- Line length limit: 120 characters (excluding code blocks, tables, and headings)
- Inline HTML is allowed (for MkDocs extensions)
- First line doesn't need to be a heading
- Duplicate headings are allowed if they're in different sections

## CI/CD

The project includes GitHub Actions workflows that:

- **Lint markdown files** on every pull request and push to main
- **Deploy documentation** to GitHub Pages when a new tag is pushed

## Development

### Prerequisites

- Python 3.x
- Node.js 18+
- npm

### Local Development

1. Clone the repository
2. Run `make install-deps` to install dependencies
3. Run `make serve` to start the development server
4. Edit markdown files in the `docs/` directory
5. Run `make lint` to check your changes

The development server will automatically reload when you make changes to the documentation files.