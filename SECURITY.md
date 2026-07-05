# Security Policy

We take the security of the Person Bio desktop extension and its underlying
service seriously.

## Reporting a vulnerability

Please report security vulnerabilities privately — do **not** open a public
issue. Two channels:

1. **GitHub private vulnerability reporting** — use the "Report a vulnerability"
   button under this repository's **Security** tab.
2. **Direct contact** — reach the maintainer via <https://person.bio/contact>
   and mark the message "Security".

We aim to acknowledge reports within 3 business days and to investigate all
reports with a reasonable standard of care. Please include steps to reproduce,
affected versions, and any relevant logs.

## Scope

- This extension (`.mcpb`) is a thin `mcp-remote` bridge and stores no secrets.
- The remote MCP server it connects to is `https://person.bio/api/v1/mcp`;
  vulnerabilities in the service itself are also in scope and handled through the
  same channels.

Thank you for helping keep Person Bio users safe.
