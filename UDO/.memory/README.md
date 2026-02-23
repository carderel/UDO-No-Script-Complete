# .memory/

## What It Is

This folder is the AI's persistent memory system — facts, notes, and context that survive across sessions.

## What It Does

Memory is organized into three tiers:

| Tier | Purpose | Lifespan |
|------|---------|----------|
| **Canonical** | Verified facts | Permanent |
| **Working** | Current session notes | Until archived |
| **Disposable** | Scratch space | Cleared between sessions |

This prevents context loss while keeping memory organized and trustworthy.

## Why It's Included

**Problem:** AI has no memory between sessions. Every conversation starts fresh. Context built up over hours is lost. Facts discovered are forgotten. The same ground gets covered repeatedly.

**Solution:** Explicit memory system. Important facts go to canonical (permanent). Working notes persist until archived. Scratch space cleared regularly.

## Structure

```
.memory/
├── canonical/          # Verified, permanent facts
│   └── {fact-name}.md
├── working/            # Current session notes
│   └── {topic}.md
├── disposable/         # Temporary scratch space
│   └── {scratch}.md
└── README.md           # This file
```

## Memory Tiers Explained

### Canonical (`canonical/`)

**What goes here:**
- Verified facts about the project
- Confirmed decisions
- Stable requirements
- Proven patterns

**Characteristics:**
- Must have evidence or source
- Reviewed before inclusion
- Rarely changes
- Trusted as ground truth

**Example:**
```markdown
# Fact: Database Schema

**Verified:** 2026-02-06
**Source:** schema.sql, line 1-50

The application uses PostgreSQL with the following core tables:
- users (id, email, created_at)
- orders (id, user_id, total, status)
- products (id, name, price, inventory)

Foreign key: orders.user_id → users.id
```

### Working (`working/`)

**What goes here:**
- Current analysis notes
- Research in progress
- Draft conclusions
- Session-specific context

**Characteristics:**
- May be incomplete
- Subject to revision
- Archived when project phase completes
- Not yet verified

**Example:**
```markdown
# Working: API Integration Notes

Still investigating the payment API:
- Auth uses OAuth2
- Rate limit appears to be 100/min
- Need to confirm webhook format
```

### Disposable (`disposable/`)

**What goes here:**
- Temporary calculations
- Scratchpad for ideas
- Debug output
- Anything not worth keeping

**Characteristics:**
- Cleared between sessions (or manually)
- No expectation of persistence
- Quick and messy is fine

## Workflow

### Adding to Canonical

1. Fact must be verified (evidence, source)
2. Use `.templates/canonical-fact.md` format
3. Include verification date and source
4. Review before committing

### Working to Canonical Promotion

When working notes become verified:
1. Confirm accuracy
2. Add evidence/source
3. Move to `canonical/`
4. Update or delete working file

### Memory Hygiene

- Review working memory at phase boundaries
- Promote verified facts to canonical
- Clear disposable regularly
- Archive outdated canonical facts (don't delete)

## Best Practices

- **Be specific** — "API rate limit is 100/min" not "API has rate limits"
- **Cite sources** — Where did this fact come from?
- **Date entries** — When was this verified?
- **Keep canonical clean** — Only verified, stable facts
- **Use working liberally** — Better to capture than forget
