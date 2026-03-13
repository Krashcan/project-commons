# project-commons

A growing collection of reusable scripts, generators, and project scaffolding.

## Quick start

Add this helper to your shell profile:

```bash
new-project() {
  mkdir "$1" && cd "$1" && git init && init-project
}
```

Then spin up a new project:

```bash
new-project my-app
```

## What's in here

The `scripts/` directory contains generators that set up common boilerplate — GitHub workflows, gitignore, Claude config, and more. This project will keep expanding with other useful stuff as needed.
