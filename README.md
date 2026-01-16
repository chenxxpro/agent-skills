# Agent Skills

[English](#english) | 简体中文

## 简体中文

Claude Code Skills 集合，用于扩展 Claude 的功能。

### 可用 Skills

#### git-proxy-push

自动为 Git 推送到 GitHub 的操作配置代理设置。

**功能特性：**
- 自动配置 HTTP/HTTPS 代理（`http://127.0.0.1:7897`）
- 支持 SOCKS5 代理（`socks5://127.0.0.1:7897`）
- 与现有 Git 工作流无缝集成
- 支持所有标准的 `git push` 参数

**安装方法：**

1. 克隆此仓库：
   ```bash
   git clone https://github.com/chenxxpro/agent-skills.git ~/.claude/skills
   ```

2. Skill 将在 Claude Code 中自动可用。

**使用方法：**

直接让 Claude 推送到 GitHub：
- "推送到 GitHub"
- "推送到 origin main"
- "强制推送"

Skill 会在执行推送命令前自动应用代理设置。

**手动使用：**

```bash
# 基本推送
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh

# 推送到指定分支
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh origin main

# 强制推送
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh --force

# 推送标签
~/.claude/skills/git-proxy-push/scripts/git_proxy_push.sh --tags
```

**代理配置：**

此 Skill 使用以下代理设置：
- `https_proxy=http://127.0.0.1:7897`
- `http_proxy=http://127.0.0.1:7897`
- `all_proxy=socks5://127.0.0.1:7897`

如需自定义这些设置，请编辑 `git-proxy-push/scripts/git_proxy_push.sh` 文件。

---

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
