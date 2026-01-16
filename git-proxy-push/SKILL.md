---
name: git-proxy-push
description: Git push with automatic proxy configuration for GitHub. Use this skill when pushing to GitHub repositories through a proxy server. Automatically sets HTTP/HTTPS/SOCKS5 proxy environment variables (http://127.0.0.1:7897, socks5://127.0.0.1:7897) before executing git push commands.
---

# Git Proxy Push

Automatically configure proxy settings for Git push operations to GitHub.

## Quick Start

To push to GitHub with proxy settings, use the provided script:

```bash
scripts/git_proxy_push.sh
```

The script accepts all standard git push arguments:

```bash
# Push current branch
scripts/git_proxy_push.sh

# Push to specific remote and branch
scripts/git_proxy_push.sh origin main

# Push with force
scripts/git_proxy_push.sh --force

# Push tags
scripts/git_proxy_push.sh --tags
```

## Proxy Configuration

The script automatically sets the following environment variables before executing git push:

- `https_proxy=http://127.0.0.1:7897`
- `http_proxy=http://127.0.0.1:7897`
- `all_proxy=socks5://127.0.0.1:7897`

## How It Works

1. Script sets proxy environment variables
2. Executes `git push` with any provided arguments
3. Proxy settings only apply to the current shell session (the script execution)

## Resources

### scripts/git_proxy_push.sh

Executable bash script that configures proxy settings and runs git push.
