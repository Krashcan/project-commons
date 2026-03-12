# project-commons

Reusable project scaffolding — GitHub workflows, CI config, and other shared bits I copy into new repos.

## What's in here

### GitHub Actions

| File | What it does |
|------|-------------|
| `.github/workflows/ci.yml` | Runs tests on PRs to `staging`. Auto-detects which services changed and only tests those. |
| `.github/workflows/staging-to-main.yml` | Auto-opens a PR from `staging` → `main` whenever code lands on staging. |
| `.github/ci-config.yml` | Declarative config that drives CI — add a service here instead of editing workflow files. |

#### Adding a new service to CI

Edit `.github/ci-config.yml`:

```yaml
services:
  my-service:
    path: my-service       # directory relative to repo root
    language: python       # python | node (extend ci.yml for others)
    version: "3.13"
    install: pip install -r requirements.txt
    test: python -m pytest tests/ -v
```

The workflow picks it up automatically — no changes to `.yml` files needed.

---

*More commons coming as needed.*
