# How to Update UDO

## Quick Version

1. Download the latest release
2. Replace system files (see list below)
3. Keep your data files (see list below)
4. Done

---

## Files to REPLACE (system files)

These are UDO's operating system - always update them:

### Root UDO/ files
- `ORCHESTRATOR.md`
- `COMMANDS.md`
- `START_HERE.md`
- `REASONING_CONTRACT.md`
- `DEVILS_ADVOCATE.md`
- `AUDIENCE_ANTICIPATION.md`
- `EVIDENCE_PROTOCOL.md`
- `TEACH_BACK_PROTOCOL.md`
- `HANDOFF_PROMPT.md`
- `OVERSIGHT_DASHBOARD.md`
- `CAPABILITIES.json`
- `VERSION`

### Folder READMEs
- `.agents/README.md`
- `.checkpoints/README.md`
- `.inputs/README.md`
- `.memory/README.md`
- `.outputs/README.md`
- `.outputs/.evidence/README.md`
- `.project-catalog/README.md`
- `.rules/README.md`
- `.takeover/README.md`
- `.templates/README.md`
- `.tools/README.md`

### Templates (all of them)
- `.templates/*.md`

### Takeover agent templates
- `.takeover/agent-templates/*.md`

### Default rules (unless you customized them)
- `.rules/code-standards.md`
- `.rules/content-guidelines.md`
- `.rules/data-validation.md`

---

## Files to KEEP (your data)

These contain your project-specific work - never overwrite:

### Project state
- `PROJECT_STATE.json` - your current todos and phase
- `PROJECT_META.json` - your project metadata

### Customizable files (keep if you modified them)
- `HARD_STOPS.md` - your absolute rules
- `LESSONS_LEARNED.md` - your lessons
- `NON_GOALS.md` - your non-goals

### All contents of data folders
- `.memory/canonical/*` - your verified facts
- `.memory/working/*` - your working notes
- `.project-catalog/sessions/*` - your session logs
- `.project-catalog/decisions/*` - your decisions
- `.project-catalog/errors/*` - your error logs
- `.project-catalog/handoffs/*` - your handoffs
- `.outputs/*` - your deliverables
- `.checkpoints/*` - your saved progress
- `.agents/*` - your custom agents
- `.inputs/*` - your source materials

---

## Step-by-Step

1. **Backup** your current `UDO/` folder (just in case)

2. **Download** the new release

3. **Copy system files** from new release to your project, overwriting old versions

4. **Skip data files** - don't copy anything that would overwrite your work

5. **Verify** by checking `UDO/VERSION` matches the new release

---

## If Something Goes Wrong

Restore from your backup. Your data is in the folders listed under "Files to KEEP" - those are the important ones.
