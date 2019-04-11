#!/usr/bin/env bash

# Install git-secrets package
brew install git-secrets

# Add a configuration template if you want to add hooks to all repositories you initialize or clone in the future.
git secrets --register-aws --global

# Add hooks to all your local repositories.
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets
