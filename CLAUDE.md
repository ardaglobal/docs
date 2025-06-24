# Claude Code Configuration

This file contains configuration and context for Claude Code to optimize development workflows for this documentation repository.

## Project Overview
This is an MkDocs documentation site for Arda - a financial infrastructure platform. The documentation covers various modules including Arda Core, Arda Trading, Arda Capital, and associated primitives and protocols.

## Key Commands
- `mkdocs serve` - Start local development server
- `mkdocs build` - Build static site
- `mkdocs gh-deploy` - Deploy to GitHub Pages (if configured)

## Project Structure
- `docs/` - Main documentation content
- `mkdocs.yml` - MkDocs configuration
- `snippets/` - Reusable content snippets
- `site/` - Generated static site (build output)

## Development Guidelines
- All markdown files should include the warning snippet at the top: `--8<-- "warning.md"`
- Use MkDocs Material theme conventions for callouts and formatting
- Follow existing file organization patterns in the docs/ directory
- The documentation is in active development - content may change frequently

## MkDocs Configuration Notes
- Uses Material theme with favicon
- Configured with pymdownx.snippets extension for reusable content
- Extensive navigation structure covering all Arda modules

## Common Tasks
- Adding new pages: Update both the markdown file and nav section in mkdocs.yml
- Global warnings/notices: Use snippets in the snippets/ directory
- Styling: Leverage Material theme's built-in callouts and formatting