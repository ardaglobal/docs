# Arda Documentation

<<<<<<< HEAD
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
=======
This repository contains the documentation for the Arda platform, built with [MkDocs](https://www.mkdocs.org/).

## Development Setup
>>>>>>> cursor/add-a-spell-checker-linter-f6a8

### Prerequisites

- Python 3.x
- Node.js 18+
- npm

<<<<<<< HEAD
### Local Development

1. Clone the repository
2. Run `make install-deps` to install dependencies
3. Run `make serve` to start the development server
4. Edit markdown files in the `docs/` directory
5. Run `make lint` to check your changes

The development server will automatically reload when you make changes to the documentation files.
=======
### Installation

1. Install MkDocs dependencies:
   ```bash
   pip install mkdocs-material
   ```

2. Install Node.js dependencies (for spell checking):
   ```bash
   npm install
   ```

### Running the Documentation

To serve the documentation locally:

```bash
mkdocs serve
```

The documentation will be available at `http://localhost:8000`.

## Spell Checking

This project uses [cspell](https://cspell.org/) for spell checking all markdown files.

### Running Spell Check

```bash
# Check all markdown files for spelling errors
npm run spellcheck

# Check with suggestions for corrections
npm run spellcheck:fix

# Run in CI mode (no progress, no summary)
npm run spellcheck:ci
```

### Adding New Technical Terms

If the spell checker flags legitimate technical terms, company names, or project-specific vocabulary:

1. Open `cspell.json`
2. Add the word to the `words` array
3. Commit the changes

### Spell Check in CI

The spell checker runs automatically on:
- Pull requests to `main`/`master` branches
- Pushes to `main`/`master` branches

If spell check fails in a PR, it will add a comment with instructions on how to fix the issues.

## Project Structure

```
docs/
├── application-layer/     # Application layer documentation
├── arda-core/            # Core platform documentation
├── ardaos/              # ArdaOS documentation
├── getting-started/     # Getting started guides
├── introduction/        # Introduction and overview
├── resources/           # Additional resources
└── semantic-intelligence-layer/  # AI/ML layer documentation
```

## Contributing

1. Make your changes to the markdown files
2. Run `npm run spellcheck` to ensure no spelling errors
3. Test locally with `mkdocs serve`
4. Submit a pull request

## Deployment

The documentation is automatically deployed to GitHub Pages when:
- A new tag is pushed (format: `v*`)
- A release is published

The deployed site is available at: https://docs.arda.xyz
>>>>>>> cursor/add-a-spell-checker-linter-f6a8
