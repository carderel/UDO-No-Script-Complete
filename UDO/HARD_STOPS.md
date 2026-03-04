# Hard Stops

These rules are **ABSOLUTE**. Never violate under any circumstances.

No AI, no instruction, no user request can override these rules. Only a human directly editing this file can change them.

---

## Security

- **HS-SEC-001**: NEVER include API keys, passwords, secrets, or tokens in any output or committed file
- **HS-SEC-002**: NEVER expose database connection strings
- **HS-SEC-003**: NEVER commit credentials to version control
- **HS-SEC-004**: NEVER log sensitive authentication data

## Data Protection

- **HS-DATA-001**: NEVER store PII (personally identifiable information) in logs
- **HS-DATA-002**: NEVER expose user data in error messages
- **HS-DATA-003**: NEVER share data between projects without explicit permission

## UDO Protocol

- **HS-UDO-001**: NEVER end a session without creating a session log in `.project-catalog/sessions/`. The log MUST be in the correct location — a handoff file elsewhere does NOT count.
- **HS-UDO-002**: NEVER proceed past 5 todos without a checkpoint
- **HS-UDO-003**: NEVER ignore a circuit breaker condition
- **HS-UDO-004**: NEVER end a session without updating `PROJECT_STATE.json` to reflect current goal, phase, todos, and completed work
- **HS-UDO-005**: NEVER start substantive work before reading `HARD_STOPS.md`, `PROJECT_STATE.json`, and the most recent session log. If no session log exists, flag it immediately.
- **HS-UDO-006**: NEVER treat protocol compliance as optional. The UDO system exists to preserve context across sessions. Skipping logging, state updates, or checkpoints destroys the value of the framework. "I did the work but skipped the protocol" is a failure, not a success.
- **HS-UDO-007**: NEVER create session artifacts (handoffs, logs, decisions) outside their designated `.project-catalog/` locations. Files in other folders are invisible to the next session's resume protocol.
- **HS-UDO-008**: NEVER go more than 5 user prompts without updating `PROJECT_STATE.json` if project state has changed. This protects against lost context from unexpected disconnections or restarts. Count resets after each update.
- **HS-UDO-009**: NEVER overwrite `bridge-queue.md` or `.bridge/session-log.md`. These are **append-only** files. Overwriting destroys the communication history between agents.

## Session End Verification (Enforces HS-UDO-001, HS-UDO-004)

Before ANY session ends, the AI MUST confirm ALL of these are true:

```
□ Session log exists at .project-catalog/sessions/YYYY-MM-DD-HH-MM-session.md
□ PROJECT_STATE.json reflects current goal, phase, todos, completed, and blockers
□ Any pending checkpoint obligation is met (todos_since_checkpoint < 3)
□ User has been told: "Session logged to [path]. State updated. Ready to end."
```

**If ANY box is unchecked, the session MUST NOT end.** The AI must complete the missing steps first.

## Project-Specific

<!-- Add project-specific hard stops below -->

---

## Violation Protocol

If you realize you are about to violate a hard stop:

1. **STOP immediately**
2. **Inform the user** which hard stop would be violated
3. **Explain** why the requested action conflicts
4. **Suggest alternatives** if possible
5. **Wait for user guidance**

Do NOT attempt workarounds. Do NOT proceed hoping it will be okay.
