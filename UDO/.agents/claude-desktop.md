# Agent: Claude Desktop

## Agent Type
**External (Bridged)**

## Platform
- **AI Platform:** Claude Desktop (Claude.ai)
- **Bridge Adapter:** `.bridge/adapters/claude-desktop/adapter.md`

## Specialization
Web research, Mac automation, cloud service access, and document creation via Claude.ai's desktop capabilities.

## Capabilities
- Browse the web, search, fetch and analyze pages
- Control Mac applications via AppleScript (Finder, Mail, Calendar, VS Code, any app)
- Control Chrome browser (navigate, click, fill forms, read pages)
- Search and read Google Drive files
- Access Slack, Gmail, Google Calendar via MCP connectors
- Access Microsoft 365 via MCP connector
- Create documents (.docx), presentations (.pptx), spreadsheets (.xlsx), PDFs
- Type keystrokes into any application window
- Search past conversations for historical context

## Filesystem Access
- **Method:** applescript (`do shell script`)
- **Bridge Path:** `UDO/.bridge/`

## Connected Services
- **Web** — native browsing capability
- **Google Drive** — native search tool
- **Slack** — MCP connector
- **Gmail** — MCP connector
- **Google Calendar** — MCP connector
- **Microsoft 365** — MCP connector
- **Chrome** — AppleScript automation
- **Mac applications** — AppleScript (System Events)

## Input Contract
Expects:
- Bridge requests in `bridge-queue.md` with full context (receiving agent has zero prior memory)
- Absolute file paths for any referenced files
- Verbatim error messages (not summarized)

## Output Contract
Returns:
- Bridge responses appended to `bridge-queue.md` with results and follow-up steps
- Entries in `.bridge/session-log.md` for every meaningful action
- Updates to `bridge-state.json` reflecting current status
- Created files (documents, presentations, etc.) at specified paths

## Operating Constraints
- All communication via `.bridge/bridge-queue.md`
- Filesystem access via AppleScript only — cannot directly read/write files
- Cannot maintain state across conversations (context resets each chat)
- Cannot poll or watch files — requires human to trigger
- Cannot read terminal output directly — must write to temp file then read
- Cannot run CLI commands, builds, tests, linters, or git operations
- MANDATORY: Follow error escalation protocol in BRIDGE-PROTOCOL.md
- MANDATORY: Invoke stuck protocol if requirements are ambiguous

## Availability
- **Status:** on-demand
- **Last Seen:** never
- **Activation:** Open Claude.ai conversation, paste contents of `.bridge/adapters/claude-desktop/INSTRUCTIONS.md`

## Learned Rules
<!-- Added when lessons apply to this agent -->

## Success Metrics
- Bridge requests completed within expected timeframe
- Response quality sufficient for Local Agent to proceed without follow-up
- No unresolved NEEDS_CLARIFICATION loops exceeding 2 rounds
- Web research returns actionable, sourced information
- Document creation matches requested format and content requirements
