# .rules/

## What It Is

This folder contains project-specific constraints, standards, and guidelines that the AI must follow.

## What It Does

Rules extend the base UDO protocols with project-specific requirements:
- Coding standards for this codebase
- Content guidelines for this client
- Data validation requirements
- Industry-specific compliance
- Team conventions

Rules are **additive** — they layer on top of UDO's core rules, not replace them.

## Why It's Included

**Problem:** Every project has specific constraints. Coding style, tone of voice, compliance requirements, forbidden patterns. These aren't universal — they're project-specific. Without a place to define them, the AI forgets or ignores them.

**Solution:** Define rules once in `.rules/`. AI reads them during orientation and follows them throughout the project.

## Structure

```
.rules/
├── code-standards.md       # Coding conventions
├── content-guidelines.md   # Writing style and tone
├── data-validation.md      # Data handling requirements
├── {custom-rule}.md        # Project-specific rules
└── README.md               # This file
```

## Rule File Format

```markdown
# Rule: {Name}

## Purpose
{Why this rule exists}

## Requirements
- {Specific requirement}
- {Specific requirement}

## Examples

### Correct
{Example of following the rule}

### Incorrect
{Example of violating the rule}

## Exceptions
{When this rule doesn't apply, if any}
```

## Default Rules

UDO includes three default rule files:

| File | Purpose |
|------|---------|
| `code-standards.md` | Basic coding conventions |
| `content-guidelines.md` | Writing style guidelines |
| `data-validation.md` | Data handling requirements |

Customize these or add your own.

## How Rules Are Applied

1. AI reads all `.rules/*.md` during session orientation
2. Rules are treated as constraints alongside HARD_STOPS.md
3. Violations should be flagged in session logs
4. Persistent violations go to LESSONS_LEARNED.md

## Creating Custom Rules

For project-specific needs:

```markdown
# Rule: Client Communication Style

## Purpose
All deliverables for Acme Corp must match their brand voice.

## Requirements
- Use active voice
- No jargon without definition
- Maximum 8th grade reading level
- Always include executive summary

## Examples

### Correct
"Sales increased 15% this quarter."

### Incorrect
"A 15% YoY revenue augmentation was observed in Q4."
```

## Rules vs HARD_STOPS

| HARD_STOPS.md | .rules/ |
|---------------|---------|
| Universal constraints | Project-specific constraints |
| Rarely change | Change per project |
| Absolute limits | Guidelines and standards |
| "Never do X" | "In this project, do X this way" |
