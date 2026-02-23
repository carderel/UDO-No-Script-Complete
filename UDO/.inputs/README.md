# .inputs/

## What It Is

This folder contains source materials, briefs, reference documents, and any external information the project needs.

## What It Does

Centralizes all inputs so the AI knows where to find:
- Project briefs and requirements
- Reference documents
- Data files to analyze
- Examples and templates from outside UDO
- Client-provided materials
- Research sources

## Why It's Included

**Problem:** Source materials scattered across chat messages, uploads, and vague references. AI can't find what it needs. Context about inputs is lost between sessions.

**Solution:** One folder for all inputs. Manifest file tracks what's there and why it matters.

## Structure

```
.inputs/
├── manifest.json       # Index of all inputs with descriptions
├── brief.md            # Project brief (if applicable)
├── data/               # Data files for analysis
├── references/         # Reference documents
└── README.md           # This file
```

## Manifest File

`manifest.json` indexes inputs so the AI understands what's available:

```json
{
  "inputs": [
    {
      "file": "brief.md",
      "description": "Original project requirements from client",
      "added": "2026-02-06",
      "relevance": "Primary source of truth for goals"
    },
    {
      "file": "data/sales_q4.csv",
      "description": "Q4 sales data for analysis",
      "added": "2026-02-06",
      "relevance": "Raw data for revenue analysis task"
    }
  ]
}
```

## How to Use

### Adding Inputs

1. Place file in `.inputs/` (or subfolder)
2. Update `manifest.json` with description
3. Reference in PROJECT_STATE.json if tied to a todo

### Referencing Inputs

In todos or agent tasks:
```
Analyze the sales data in .inputs/data/sales_q4.csv
```

The AI knows exactly where to look.

## Best Practices

- Add descriptions to manifest — don't just dump files
- Organize large projects with subfolders
- Note the source (who provided it, when)
- Flag any inputs that are outdated or superseded
