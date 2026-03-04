# Changelog

## v4.7 (2026-03-04)

### Added
- Pre-Flight Complexity Audit (`PRE-FLIGHT-AUDIT.md`) — scores bridge request operations to prevent overloaded single-prompt execution
- Browser Execution Ladder (`BROWSER-LADDER.md`) — mandatory 5-level cheapest-first escalation for browser reads
- HS-UDO-010: pre-flight audit mandatory before executing bridge requests
- HS-UDO-011: browser ladder level skips only permitted by page type rules
- `Pre-flight [REQ-XXXX]` command and `pf` shortcut
- Page type rules for Claude Desktop adapter (Looker, Sheets, SPAs, auth-required)
- 2 new circuit breakers: complexity score >10 HALT, browser Level 5 flag-to-user

### Changed
- bridge-state.json: v1.1 with `preflight` tracking fields
- BRIDGE-PROTOCOL.md: added Pre-Flight Audit and Browser Ladder sections
- Bridge response template: added Escalation-Log field
- Bridge request template: documented audit block approach (append-only compliant)
- Claude Desktop INSTRUCTIONS.md: self-contained audit and ladder summaries
- ORCHESTRATOR.md: updated directive 3.5, compliance self-check
- CAPABILITIES.json: added `pre_flight_audit` and `browser_execution_ladder`

---

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
