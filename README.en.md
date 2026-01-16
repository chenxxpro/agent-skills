# Agent Skills

[简体中文](README.md) | English

## English

Claude Code Skills collection for extending Claude's capabilities.

### Available Skills

#### git-proxy-push

Automatically configure proxy settings for Git push operations to GitHub.

**Features:**
- Automatic HTTP/HTTPS proxy configuration (`http://127.0.0.1:7897`)
- SOCKS5 proxy support (`socks5://127.0.0.1:7897`)
- Seamless integration with existing Git workflows
- Supports all standard `git push` arguments

**Installation:**

1. Clone this repository:
   ```bash
   git clone https://github.com/chenxxpro/agent-skills.git ~/.claude/skills
   ```

2. The skill will be automatically available in Claude Code.

**Usage:**

Simply ask Claude to push to GitHub:
- "Push to GitHub"
- "Push to origin main"
- "Git push with force"

The skill will automatically apply proxy settings before executing the push command.

**Manual Usage:**

```bash
# Basic push
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh

# Push to specific branch
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh origin main

# Force push
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh --force

# Push tags
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh --tags
```

**Proxy Configuration:**

The skill uses the following proxy settings:
- `https_proxy=http://127.0.0.1:7897`
- `http_proxy=http://127.0.0.1:7897`
- `all_proxy=socks5://127.0.0.1:7897`

To customize these settings, edit `git-proxy-push/scripts/git_proxy_push.sh`.

## License

MIT License
