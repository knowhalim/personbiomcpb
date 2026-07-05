# Person Bio — Claude Desktop Extension (.mcpb)

One-click Claude Desktop extension that connects Claude to your
[Person Bio](https://person.bio) account so you can build, update, and share
your résumé and career story just by chatting.

Under the hood it is a thin [`mcp-remote`](https://www.npmjs.com/package/mcp-remote)
bridge to Person Bio's remote MCP server at `https://person.bio/api/v1/mcp`.
Authentication is OAuth — you sign in through your browser — so **the extension
stores no secrets** and is identical for every user.

## What you can do

- **Show my résumé** — read your structured résumé or the always-current `resume.md`
- **Add a job / skill / education** — update any résumé section
- **Rewrite my summary** — applies a built-in résumé-craft + QC guide
- **Map my career journey** and **write a self-introduction** for networking
- **Export my résumé as Markdown**

Every tool is annotated read-only or write, and Claude asks your permission
before each call.

## Install

1. Download the latest `personbio.mcpb` (from this repo's
   [Releases](https://github.com/knowhalim/personbiomcpb/releases), or build it —
   see below). You can also get the hosted build at
   <https://person.bio/personbio.mcpb>.
2. In **Claude Desktop**: **Settings → Extensions → Advanced settings →
   Install Extension…** and pick the `.mcpb` file.
   *(Double-clicking works on macOS; on Windows use the Settings path above,
   since Windows does not associate the `.mcpb` file type.)*
3. Open a chat and say *"Show me my résumé."* — Claude will prompt you to sign
   in to Person Bio, then run the tool.

## Build from source

Requires Node.js 18+.

```bash
cd server && npm install --omit=dev && cd ..
npx @anthropic-ai/mcpb validate manifest.json
npx @anthropic-ai/mcpb pack . personbio.mcpb
```

Or just run `./build.sh`.

## Privacy Policy

This extension does not collect, store, or transmit any data on its own. It
connects your Claude Desktop app to your Person Bio account over an encrypted
OAuth session; all data access happens against your live Person Bio profile and
is governed by the Person Bio Privacy Policy:

**https://person.bio/p/privacy-policy**

The extension bundles no analytics and writes no personal data to disk. OAuth
tokens are managed by `mcp-remote` in your local user profile. You can revoke
access at any time from your Person Bio account settings, or by removing the
extension in Claude Desktop.

## For reviewers

A fully-populated demo account is ready; **credentials are provided privately in
the directory submission** (not published here).

After installing, say *"Show me my résumé"* to trigger sign-in, then try:
*"Add Docker to my skills."* · *"Rewrite my professional summary to be more
impactful."* · *"Write a self-introduction I can use for networking."* ·
*"Give me my résumé as a Markdown document."* All are verified working.

## Security

See [SECURITY.md](./SECURITY.md) for how to report a vulnerability.

## License

MIT — see [LICENSE](./LICENSE).
