# Evidence System

This folder contains evidence packets and teach-back documents for deliverables.

## Purpose

When AI generates deliverables, you receive conclusions but didn't walk the research path yourself. This creates a gap: you can't confidently defend claims you didn't personally investigate.

The evidence system closes this gap by:
1. **Evidence Packets** - Raw data and source citations for every claim
2. **Teach-Back Documents** - AI explains findings so you can internalize the reasoning

## Structure

```
.evidence/
└── {deliverable-name}/
    ├── EVIDENCE_PACKET.md    # Claims → Sources → Raw data
    ├── TEACH_BACK.md         # AI explains the research journey
    └── raw/                  # Screenshots, exports, source files
        └── ...
```

## Workflow

1. AI creates deliverable in `.outputs/`
2. AI creates matching evidence folder in `.outputs/.evidence/{deliverable-name}/`
3. AI populates EVIDENCE_PACKET.md with claim-by-claim sourcing
4. AI writes TEACH_BACK.md explaining key findings
5. You review teach-back, challenge weak points
6. You now own the knowledge enough to defend it

## When to Create Evidence

Required for:
- Client-facing deliverables
- Audits and analyses
- Strategic recommendations
- Any document with claims that may be challenged

Not required for:
- Internal working documents
- Code files
- Session logs
