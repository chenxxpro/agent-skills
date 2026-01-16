#!/bin/bash
# Git push with proxy settings for GitHub
# Usage: ./git_proxy_push.sh [git-push-args...]

# Set proxy environment variables
export https_proxy=http://127.0.0.1:7897
export http_proxy=http://127.0.0.1:7897
export all_proxy=socks5://127.0.0.1:7897

# Execute git push with provided arguments
git push "$@"
