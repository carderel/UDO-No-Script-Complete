# .outputs/

## What It Is

This folder contains all deliverables produced by the project — the actual work product.

## What It Does

Centralizes everything the project produces:
- Final documents and reports
- Code artifacts
- Analysis results
- Presentations
- Any client-facing or stakeholder-facing output

Also contains evidence and drafts in subfolders.

## Why It's Included

**Problem:** Deliverables scattered across chat, downloads, random folders. Hard to find final versions. No clear distinction between drafts and finals.

**Solution:** One folder for outputs. Drafts in `_drafts/`. Evidence in `.evidence/`. Finals at root level.

## Structure

```
.outputs/
├── _drafts/                    # Work in progress
│   └── report-v1.md
├── .evidence/                  # Evidence packets and teach-backs
│   └── {deliverable-name}/
│       ├── EVIDENCE_PACKET.md
│       ├── TEACH_BACK.md
│       └── raw/
├── final-report.md             # Completed deliverable
├── analysis-results.xlsx       # Completed deliverable
└── README.md                   # This file
```

## Workflow

### Creating Outputs

1. Work starts in `_drafts/`
2. Iterate and refine
3. When complete, move to root `.outputs/`
4. Create evidence folder if claims need sourcing
5. Log completion in session log

### Evidence Requirements

For deliverables with claims (audits, analyses, recommendations):

```
.outputs/
├── audit-report.md
└── .evidence/
    └── audit-report/
        ├── EVIDENCE_PACKET.md    # Claim-by-claim sourcing
        ├── TEACH_BACK.md         # Explanation for human
        └── raw/                  # Screenshots, data exports
```

See `EVIDENCE_PROTOCOL.md` and `TEACH_BACK_PROTOCOL.md` for requirements.

## Draft vs Final

| Location | Status | Notes |
|----------|--------|-------|
| `_drafts/` | Work in progress | May be incomplete, unreviewed |
| Root `.outputs/` | Complete | Ready for delivery or review |

## Naming Conventions

- Use descriptive names: `q4-sales-analysis.md` not `output1.md`
- Version drafts: `report-v1.md`, `report-v2.md`
- Date if relevant: `audit-2026-02-06.md`

## What Belongs Here

✅ Final deliverables
✅ Reports and analyses
✅ Code artifacts for delivery
✅ Presentations
✅ Evidence packets

## What Doesn't Belong Here

❌ Session logs (→ `.project-catalog/sessions/`)
❌ Working notes (→ `.memory/working/`)
❌ Source materials (→ `.inputs/`)
❌ Templates (→ `.templates/`)
