---
name: firefly
description: Learn how to use the firefly tool for packaging and deploying zarf packages to multiple environments. Includes opsFolder structure, common commands, and the --help flag usage.
---

# Firefly

Firefly is a golang CLI tool for packaging and deploying Zarf packages to multiple Kubernetes environments.

## Quick Reference

```sh
# Get help
firefly help
firefly [command] --help

# Build and deploy to dev environment
firefly build dev
firefly deploy dev

# Differential build - faster iterative development
# Builds only differences from an existing package in the registry
firefly build dev -d harbor.ex.afds.dev/kbr/zarf/dev/hawkeye
firefly deploy dev --package [path to built package here]

# Initialize firefly in a repository
firefly setup

# Request access to secrets
firefly adduser [email]

# Build encrypted archive of secrets
firefly encrypt
```

Expect `firefly build` to take ~15min and `firefly deploy` to take ~25min, depending on the package complexity. Give these commands generous timeout windows.

## OpsFolder Structure

When running `firefly setup`, firefly creates the following folder structure in your repository:

| Path | Purpose |
|------|---------|
| `firefly/firefly.yaml` | Project configuration - defines deployment targets (environments), DockerBuilds for building images |
| `firefly/zarf.yaml` | Zarf package definition - defines components, variables, and packages |
| `firefly/zarf-config.yaml` | Optional Zarf runtime configuration (storage class, timeouts, registry settings) |
| `firefly/secrets/` | Encrypted secrets folder - add secret files here (must be added to .gitignore) |
| `firefly/users.yaml` | Public keys for secret access management |
| `firefly/charts/` | Helm charts for Kubernetes resources |
| `firefly/overrides/` | Environment-specific configuration overrides |
| `firefly/manifests/` | Raw Kubernetes manifests |
| `firefly/.gitignore` | Auto-generated gitignore (excludes secrets/, images/, *.tgz,*.zst) |

### firefly.yaml Configuration

The `firefly.yaml` file contains the project configuration:

```yaml
# Targets - map of target deployment environment names to configurations
targets:
  dev:
    cluster: "arn:aws-us-gov:eks:us-gov-west-1:062032711895:cluster/dev"
    kind: false
    config:
      DOMAIN: "cs-dev.afdk.org"
  stg:
    cluster: "arn:aws-us-gov:eks:us-gov-west-1:062032711895:cluster/stg"
    config:
      DOMAIN: "cs-stg.afdk.org"
  prd:
    cluster: "arn:aws-us-gov:eks:us-gov-west-1:062032711895:cluster/prd"
    config:
      DOMAIN: "cs.afdk.org"

# DockerBuilds - list of local Dockerfiles to build for deployment
DockerBuilds:
  - dockerfilePath: "cs-api/Dockerfile"
    contextDir: "cs-api"
    image: "harbor.ex.afds.dev/kbr/cs-api"
    buildArgs:
      VERSION: "1.2.3"
```

### Differential Builds

For faster iterative development, use the `-d` flag to build only the differences from an existing package in the registry:

```sh
firefly build dev -d harbor.ex.afds.dev/kbr/zarf/dev/hawkeye
```

This pulls the base package from the registry and only builds components that have changed, significantly reducing build time during development.

## Basic Workflow

### Initial Setup

1. Run `firefly setup` to create the firefly folder structure
2. Configure `firefly/firefly.yaml` with your targets and DockerBuilds
3. Configure `firefly/zarf.yaml` following Zarf's documentation
4. Add secrets to `firefly/secrets/` and add the folder to `.gitignore`
5. Run `firefly adduser [email]` to get a public key with access to your secrets
6. Run `firefly encrypt` to build an encrypted archive of your secrets

### Requesting Access

1. Create a feature branch
2. Run `firefly adduser [email]`
3. Merge into main
4. The pipeline will update your access via the reencrypt job

### Deployment

```sh
# Deploy to a specific environment
firefly deploy dev
firefly deploy stg
```

### Updates

Cluster resources should only be changed through `firefly deploy` to ensure the correct labels are applied and that all changes are version controlled.

## Getting Help

Use the `--help` flag on any command to get more information:

```sh
firefly build --help
firefly deploy --help
firefly --help
```

## Implementation

Internally, firefly uses the go libraries for docker, helm, and zarf to build and deploy. The tool is written in pure golang and does not depend on extenal binaries.
