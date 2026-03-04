# Changelog

## v4.6 (2026-03-04)

### Added
- Bridge module (`.bridge/`) — AI-agnostic cross-instance communication protocol
- Claude Desktop adapter (first bridge adapter)
- External agent template and claude-desktop agent definition
- Backup command (`bu`) for mid-session full saves
- 5 new hard stops (HS-UDO-004 through HS-UDO-008) and session end verification checklist
- HS-UDO-009: append-only bridge files
- Prompt-interval state updates (every 5 user prompts)
- Bridge commands: `br`, `cb`, `bs` and more
- `.project-catalog/communications/` for bridge archives

### Changed
- ORCHESTRATOR.md: added bridge directive 3.5, bridge circuit breakers, bridge resume steps
- START_HERE.md: added bridge orientation step and command shortcuts
- CAPABILITIES.json: added bridge section
- README.md (UDO/): added `.bridge/` to directory tree

---

## v4.5 (2026-02-22)

### Added
- Evidence Protocol - source every claim in deliverables
- Teach-Back Protocol - explain findings so humans can defend them
- `.outputs/.evidence/` folder for evidence packets
- `evidence-packet.md` and `teach-back.md` templates
- `.rules/` default files: code-standards, content-guidelines, data-validation
- `.takeover/agent-templates/` - 5 auditor agents for project takeover
- README.md in every folder explaining its purpose
- `check-update.sh` and `check-update.ps1` for version checking
- `VERSION` file for tracking installed version

### Changed
- Moved from install scripts to simple folder copy
- Updated root README with no-script installation

### Removed
- `install.sh` and `install.ps1` (moved to Ultimate-UDO repo for those who want them)

---

## v4.4 and earlier

See Ultimate-UDO repository for previous changelog.
