# .project-catalog/

## What It Is

This folder is the project's historical record — every session, decision, error, and handoff is logged here.

## What It Does

The catalog provides:
- **Audit trail** — What happened and when
- **Context continuity** — New sessions understand history
- **Decision record** — Why choices were made
- **Error learning** — Mistakes documented to prevent repeats
- **Handoff support** — Clean transfers between sessions

## Why It's Included

**Problem:** AI sessions are ephemeral. Decisions made in one session are forgotten. Errors repeat because there's no record. New sessions lack context. No accountability for what was done.

**Solution:** Log everything important. Sessions, decisions, errors, handoffs. The catalog becomes the project's institutional memory.

## Structure

```
.project-catalog/
├── sessions/           # Session logs
│   ├── SESSION_001.md
│   ├── SESSION_002.md
│   └── README.md
├── decisions/          # Decision records
│   └── DEC_001.md
├── agents/             # Agent activity logs
│   └── agent-name-log.md
├── errors/             # Error reports
│   └── ERR_001.md
├── handoffs/           # Handoff documents
│   └── HANDOFF_001.md
├── archive/            # Completed/old records
└── README.md           # This file
```

## Catalog Components

### Sessions (`sessions/`)

Every AI session creates a log:
- What was the goal?
- What was completed?
- What decisions were made?
- What's left for next session?

**Format:** `SESSION_XXX.md`

**New sessions read the most recent log for context.**

### Decisions (`decisions/`)

Important choices documented with:
- What was decided
- Options considered
- Why this option was chosen
- Who/what made the decision
- Implications

**Format:** `DEC_XXX.md`

**Prevents relitigating settled decisions.**

### Agents (`agents/`)

When agents are spawned, their work is logged:
- What was the agent's task?
- What did it find/produce?
- Any issues encountered?

**Format:** `{agent-name}-log.md`

### Errors (`errors/`)

When things go wrong:
- What happened?
- What was the impact?
- Root cause (if known)
- How it was resolved
- How to prevent recurrence

**Format:** `ERR_XXX.md`

**Feeds into LESSONS_LEARNED.md.**

### Handoffs (`handoffs/`)

When transferring between sessions or AI systems:
- Current state summary
- What's in progress
- What's blocked
- Critical context
- Recommended next steps

**Format:** `HANDOFF_XXX.md`

### Archive (`archive/`)

Old records that are no longer active but worth keeping:
- Completed phase logs
- Resolved error reports
- Historical decisions

## How to Use the Catalog

### Starting a Session
1. Read most recent session log
2. Read any open handoff documents
3. Check for relevant decisions
4. Review recent errors

### During a Session
1. Log significant actions
2. Record decisions with rationale
3. Document any errors
4. Update session log periodically

### Ending a Session
1. Complete session log
2. Create handoff if work continues
3. Note any open items

## Best Practices

- **Log decisions when made** — Don't backfill, context is lost
- **Be specific in errors** — Vague reports don't prevent repeats
- **Keep sessions readable** — Someone else will read this
- **Archive, don't delete** — History has value
- **Reference across documents** — Link related decisions, errors, sessions
