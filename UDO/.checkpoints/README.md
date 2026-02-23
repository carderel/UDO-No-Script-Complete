# .checkpoints/

## What It Is

This folder contains saved snapshots of project state at specific points in time.

## What It Does

Checkpoints capture:
- Current PROJECT_STATE.json
- Completed todos and their outcomes
- Active decisions and context
- Any in-progress work

When something goes wrong (context overflow, session crash, bad direction), you can restore from a checkpoint instead of starting over.

## Why It's Included

**Problem:** AI sessions can fail mid-task. Context windows overflow. Sessions timeout. Bad decisions compound. Without checkpoints, all progress is lost.

**Solution:** Save progress regularly. Every 3 todos, at phase boundaries, and before risky operations. If things go wrong, restore and continue.

## Structure

```
.checkpoints/
├── CP_001_YYYYMMDD_HHMM.json    # Checkpoint files
├── CP_002_YYYYMMDD_HHMM.json
└── README.md                    # This file
```

## Checkpoint Contents

```json
{
  "checkpoint_id": "CP_001",
  "timestamp": "2026-02-06T14:30:00Z",
  "phase": "Execution",
  "completed_todos": ["TODO_001", "TODO_002", "TODO_003"],
  "current_todo": "TODO_004",
  "project_state_snapshot": { ... },
  "notes": "Completed initial analysis, starting implementation"
}
```

## When Checkpoints Are Created

| Trigger | Reason |
|---------|--------|
| Every 3 todos | Regular progress saves |
| Phase transitions | Major milestone reached |
| Before risky operations | Safety net for rollback |
| Manual `/checkpoint` command | User-requested save |
| Before long-running tasks | Prevent total loss |

## How to Restore

Tell the AI:
```
Restore from checkpoint CP_003
```

The AI will:
1. Read the checkpoint file
2. Reset PROJECT_STATE.json to that point
3. Resume from saved position
4. Log the restore in session log

## Checkpoint Hygiene

- Old checkpoints can be deleted after project completion
- Keep at least the last 3-5 checkpoints during active work
- Archive final checkpoint with project deliverables
