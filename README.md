# Arda Documentation

This repository contains the documentation for the Arda platform, built with [MkDocs](https://www.mkdocs.org/).

## Development Setup

### Prerequisites

- Python 3.x
- Node.js 18+
- npm

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