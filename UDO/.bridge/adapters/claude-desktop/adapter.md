# Adapter: Claude Desktop

## Platform
- **Name:** Claude Desktop (Claude.ai)
- **Type:** desktop-ai
- **Version:** Any (uses "Control your Mac" tool)

## Capabilities

What Claude Desktop CAN do via the bridge:
- Control Mac applications via AppleScript (Finder, Mail, Calendar, VS Code, any app)
- Type keystrokes into any application window
- Browse the web, search, fetch pages
- Search and read Google Drive files
- Control Chrome browser (navigate, click, fill forms, read pages)
- Create documents (.docx), presentations (.pptx), spreadsheets (.xlsx), PDFs
- Access Slack via MCP connector
- Access Gmail via MCP connector
- Access Google Calendar via MCP connector
- Search past conversations for historical context
- Access user memory/preferences from past interactions

## Limitations

What Claude Desktop CANNOT do:
- Directly read/write local files (must use AppleScript `do shell script`)
- Run CLI commands in its own environment
- Maintain persistent state across conversations (context window resets each chat)
- Automatically poll or watch files (requires human to trigger)
- Read terminal output directly (must write to temp file then read)
- Execute git commands
- Run code builds, tests, or linters

## Filesystem Access
- **Method:** applescript
- **Read:** Yes — via `do shell script "cat '/path/to/file'"`
- **Write:** Yes — via `do shell script "cat > '/path/to/file' << 'EOF'\ncontent\nEOF"`
- **Path to bridge files:** Absolute path to project's `UDO/.bridge/` directory

## Connected Services

- **Web browsing** — native capability
- **Google Drive** — native search tool
- **Slack** — via MCP connector
- **Gmail** — via MCP connector
- **Google Calendar** — via MCP connector
- **Microsoft 365** — via MCP connector
- **Chrome browser** — via AppleScript automation
- **Mac applications** — via AppleScript (System Events)

## Bridge Participation
- **Polling:** human-triggered (user says "check the bridge")
- **Response format:** standard
- **Request categories handled:** web-research, mac-automation, browser-task, google-drive, cloud-service, document-creation, troubleshoot

## Auto-Detection Rules

The local agent should automatically create a bridge request for Claude Desktop when:
1. Task requires web research or browsing
2. Task requires controlling a Mac application (Finder, Mail, Calendar, etc.)
3. Task requires Chrome browser automation (navigate, click, fill forms)
4. Task requires accessing Google Drive files
5. Task requires Slack, email, or calendar access
6. Task requires creating formatted documents (.docx, .pptx, .xlsx, .pdf)
7. The local agent encounters an error it cannot resolve after 2 attempts and Desktop might have relevant context
8. The human says anything like "ask Desktop Claude", "check with Claude.ai", or "get help from the other Claude"

## Trigger Phrases

Phrases the human uses to activate Claude Desktop:
- **To check for requests:** "Check the bridge"
- **To get status:** "Bridge status"
- **To sync context:** "Sync up"

## Setup Instructions

1. Open a conversation in Claude.ai (Desktop Claude)
2. Paste the contents of `INSTRUCTIONS.md` from this adapter folder
3. Confirm Claude Desktop can access the filesystem by asking it to read bridge-state.json
4. The bridge is ready — use trigger phrases to coordinate
