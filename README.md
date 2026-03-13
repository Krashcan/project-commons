# project-commons

A growing collection of reusable scripts, generators, and project scaffolding.

## Quick start

Add the following aliases and functions to your `~/.zshrc` (or equivalent shell profile):

## Zsh Commands

| Command | Description |
|---------|-------------|
| `init-project` | Init an existing project with necessary config files |
| `new-project my-app` | Create a new project directory, initialize git, and run `init-project` |
| `feature branch-name` | Create a new feature branch from latest `staging` |

```bash
# Init existing project with necessary files
alias init-project="~/Developer/projects/project-commons/scripts/init-project.sh"

# New project -> new-project my-app
new-project() {
  mkdir "$1" && cd "$1" && git init && init-project
}

# New feature branch -> feature branch-name
feature() {
  git fetch origin
  git checkout staging && git pull origin staging
  git checkout -b "feature/$1"
}
```

## What's in here

The `scripts/` directory contains generators that set up common boilerplate — GitHub workflows, gitignore, Claude config, and more. This project will keep expanding with other useful stuff as needed.
