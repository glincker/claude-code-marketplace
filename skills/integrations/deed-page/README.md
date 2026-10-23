# deed-page

Claude Code skill for publishing what Claude builds (an HTML report, dashboard, slide deck, landing page, prototype or docs folder) to a permanent `https://<slug>.deed.page/` URL.

- One `curl` PUT publishes a file, or a `.tar.gz` of a folder. No account, API key or email is needed.
- The first response returns an owner token. Re-publishing with that token updates the same URL; the token is also what deletes the site.
- Free plan: 25 sites, 25 MB per site, 60 publishes per hour. Paid plans are listed at https://deed.page/pricing.
- A remote MCP server is also available at `https://deed.page/mcp` for clients that prefer MCP over shell commands.

## Install

```
/plugin marketplace add https://github.com/GLINCKER/claude-code-marketplace
/plugin install deed-page@glincker-marketplace
```

## Files

- `SKILL.md`: the skill Claude loads.
- `examples/publish-and-update.sh`: publishes a page, updates it in place, and deletes it, as a runnable end-to-end check.

## Source

Upstream skill and plugin manifests for Claude Code, Codex, Cursor, Gemini CLI and Grok Bot: https://github.com/f-o-x11/deed-page-skill (MIT). Service docs: https://deed.page/docs.
