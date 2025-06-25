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

4. **List Available Commands:**
   ```bash
   make help
   ```

## Linting

### Markdownlint

This project uses [markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2) to ensure consistent markdown formatting. The linting rules are configured in `.markdownlint-cli2.yaml`.


#### Linting Rules

The project uses a customized set of rules appropriate for documentation:

- Line length limit: 120 characters (excluding code blocks, tables, and headings)
- Inline HTML is allowed (for MkDocs extensions)
- First line doesn't need to be a heading
- Duplicate headings are allowed if they're in different sections

### Spell Checking

This project uses [cspell](https://cspell.org/) for spell checking all markdown files.

#### Adding New Technical Terms

If the spell checker flags legitimate technical terms, company names, or project-specific vocabulary:

1. Open `cspell.json`
2. Add the word to the `words` array
3. Commit the changes

### Running Linting

```bash
# Check for linting issues
make lint

# Automatically fix linting issues where possible
make lint-fix
```

## Development
This repository contains the documentation for the Arda platform, built with [MkDocs](https://www.mkdocs.org/).

## Development Setup

### Prerequisites

- Python 3.x
- Node.js 18+
- npm

### Local Development

1. Clone the repository
1. Run `make install-deps` to install dependencies
1. Verify setup by running `make serve` to start the development server
1. Edit markdown files in the `docs/` directory
1. Run `make lint` to check your changes
1. Test locally with `make serve`
1. Submit a pull request

The development server will automatically reload when you make changes to the documentation files.

## Project Structure

Key files:

```
.github/ # GitHub Actions workflows
docs/ # Markdown files
Makefile # Makefile for development and deployment
mkdocs.yml # Configuration file
```

## Deployment

The documentation is automatically deployed to GitHub Pages via the CI/CD pipeline.

The deployed site is available at: https://docs.arda.xyz
