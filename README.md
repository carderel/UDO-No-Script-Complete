# UDO - Universal Dynamic Orchestrator

**Version 4.5**

A file-based system for AI project management with context continuity across sessions.

**Works with any LLM** - Switch between Claude, GPT, Gemini, or any AI mid-project without losing context.

---

## Installation

1. Download or clone this repository
2. Copy the `UDO/` folder into your project
3. Tell your AI: "Read UDO/START_HERE.md and begin"

That's it.

---

## Check for Updates

Run the update checker to see if a new version is available:

**Mac/Linux:**
```bash
./check-update.sh
```

**Windows PowerShell:**
```powershell
.\check-update.ps1
```

---

## Quick Start

### 1. Copy UDO/ to your project

### 2. Configure Your AI

Add this to your AI's system prompt or custom instructions:

```
Before responding to any request, read the project's UDO/START_HERE.md and follow its instructions.
```

### 3. Start Working

The AI will:
- Read START_HERE.md
- Read ORCHESTRATOR.md (mandatory)
- Follow UDO protocol automatically

---

## What UDO Does

- **Session Continuity**: Logs every session so the next AI can pick up where you left off
- **Checkpoints**: Auto-saves progress every 3 tasks
- **Memory System**: Organizes discovered facts (canonical/working/disposable)
- **Agent Management**: Creates specialist agents when tasks need 2+ personas
- **Decision Logging**: Documents major choices with rationale
- **Evidence & Teach-Back**: Sources claims and explains findings so you can defend them

---

## Key Commands

| Command | What It Does |
|---------|--------------|
| `Resume` or `r` | Start session with oversight report |
| `Deep resume` or `dr` | Full context with last 3 sessions |
| `Handoff` or `h` | End session with proper logging |
| `Quick handoff` or `qh` | Minimal session log |
| `Status` or `s` | Get current project status |
| `Checkpoint this` or `cp` | Manual save point |
| `/rc` | Enter Reasoning Contract mode |
| `/da` | Run Devil's Advocate review |

---

## Project Structure

```
your-project/
└── UDO/
    ├── START_HERE.md           # Entry point (AI reads first)
    ├── ORCHESTRATOR.md         # Operating instructions
    ├── COMMANDS.md             # Command reference
    ├── HARD_STOPS.md           # Absolute rules
    ├── LESSONS_LEARNED.md      # Situational lessons
    ├── PROJECT_STATE.json      # Current status
    ├── REASONING_CONTRACT.md   # Evidence requirements
    ├── DEVILS_ADVOCATE.md      # Red team review
    ├── EVIDENCE_PROTOCOL.md    # Claim sourcing
    ├── TEACH_BACK_PROTOCOL.md  # Explain findings
    ├── .agents/                # Specialist AI definitions
    ├── .checkpoints/           # Saved snapshots
    ├── .inputs/                # Source materials
    ├── .memory/                # Organized facts
    ├── .outputs/               # Deliverables
    ├── .project-catalog/       # Full history
    ├── .rules/                 # Quality standards
    ├── .takeover/              # Project audit system
    ├── .templates/             # File templates
    └── .tools/                 # Tool adapters
```

---

## Protocol Enforcement

UDO includes circuit breakers that halt work if:

- **5+ todos without session log** → Halts until backfilled
- **5+ todos without checkpoint** → Forces checkpoint
- **2+ personas needed** → Requires agent creation
- **Same task fails 3x** → Escalates to human
- **Context > 80%** → Forces archival

---

## Updating

To update an existing UDO installation:

**Replace (system files):**
- All `.md` files in `UDO/` root
- All `README.md` files in subfolders
- All files in `.templates/`, `.rules/`, `.takeover/agent-templates/`

**Keep (your data):**
- `PROJECT_STATE.json`, `PROJECT_META.json`
- `LESSONS_LEARNED.md`, `HARD_STOPS.md`, `NON_GOALS.md` (if customized)
- Everything in `.memory/`, `.project-catalog/`, `.outputs/`, `.checkpoints/`, `.agents/`

---

## License

MIT - Use freely, modify as needed.
