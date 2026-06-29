# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Architecture

This is a modular zsh configuration system that uses autoloading and git submodules for extensibility. The architecture consists of:

**Core Structure:**
- `.zshrc` - Main entry point that sets up FPATH and loads modules via autoload
- `.zsh/` - Configuration directory containing modules and git submodule
- `.zsh/zshrc-git/` - Git submodule containing base configurations and specialized setups
- `.zsh/modules/` - Custom local modules (aliases.zsh, functions.zsh)

**Key Files:**
- `.zshrc` - Entry point, loads base configuration then custom overrides
- `zshrc-initialize` - Environment setup (PATH initialization, tool configurations)
- `zshrc-zplug-custom` - Plugin management via zplug
- `modules/aliases.zsh` - Custom aliases for development tools
- `modules/functions.zsh` - Custom shell functions (YouTube downloader, git utilities)

## Installation and Setup

```bash
# Initial setup (done via parent dotfiles repository)
git submodule init && git submodule update

# Reload configuration after changes
exec $SHELL -l
# or
source ~/.zshrc
```

## Configuration Loading Order

1. `.zshrc` sets up FPATH and autoloads `zshrc-base` from git submodule
2. Custom configurations override base settings:
   - `zshrc-zplug-custom` - Plugin management
   - `zshrc-alias-custom` - Custom aliases
   - `zshrc-initialize` - PATH and tool initialization (includes `mise activate`)
3. Local modules are sourced directly:
   - `modules/aliases.zsh` - Development shortcuts
   - `modules/functions.zsh` - Utility functions

## Plugin Management

Uses zplug for plugin management. Key plugins include:
- fzf integration for fuzzy finding
- enhancd for enhanced directory navigation
- zsh-autosuggestions for command completion
- Git productivity plugins

Plugin installation is automatic on first run or when new plugins are added.

## Development Tools Integration

The configuration includes specialized setups for:
- **Git**: Custom aliases and branch switching with fzf
- **Python**: mise (version management) + uv (packaging/venv) integration and SSL certificate configuration
- **Node.js**: Volta package manager
- **Kubernetes**: kubectl aliases and configurations
- **Google Cloud**: SDK integration and project configurations
- **Go**: GOPATH and binary PATH setup

## Custom Functions

Key custom functions in `modules/functions.zsh`:
- `ytd()` - YouTube video downloader with URL cleaning
- `gd()` - Enhanced git diff with path exclusions
- `cd()` - Custom cd that defaults to home when no args, uses enhancd otherwise
- `gbc()` - Copy current git branch to clipboard

## Key Environment Variables

- `ENHANCD_FILTER=""` - Disables parent directory suggestions in enhancd
- `WORDCHARS` - Customized word boundaries for shell navigation
- Various tool-specific PATH additions and configurations