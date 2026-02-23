# .agents/

## What It Is

This folder contains specialized AI agents created for focused tasks within the project.

## What It Does

Agents are mini-personas with specific expertise, constraints, and objectives. Instead of one general-purpose AI trying to do everything, agents focus on narrow tasks and do them well.

Each agent file defines:
- **Role** — What the agent specializes in
- **Expertise** — Specific knowledge domain
- **Constraints** — What it must/must not do
- **Outputs** — What it produces

## Why It's Included

**Problem:** General-purpose AI tries to do everything at once, leading to shallow or unfocused work.

**Solution:** Create specialized agents for specific tasks:
- Security Auditor — Reviews code for vulnerabilities
- Data Analyst — Analyzes datasets and produces insights
- Documentation Writer — Creates user-facing docs
- Code Reviewer — Evaluates code quality and standards

Agents can work sequentially or in parallel, each contributing to the larger project.

## Structure

```
.agents/
├── _archive/           # Completed/retired agents
├── agent-name.md       # Active agent definition
└── README.md           # This file
```

## How Agents Are Created

1. Orchestrator identifies need for specialized focus
2. Agent created using `.templates/agent.md`
3. Agent works on assigned task
4. Agent outputs saved to `.outputs/`
5. Agent archived when task complete

## Example Agent

```markdown
# Agent: Security Auditor

## Role
Review codebase for security vulnerabilities

## Expertise
- OWASP Top 10
- Authentication/authorization patterns
- Input validation
- Secrets management

## Constraints
- Only report confirmed vulnerabilities
- Provide remediation for each finding
- Classify by severity (Critical/High/Medium/Low)

## Outputs
- Security audit report in `.outputs/`
- Evidence in `.outputs/.evidence/`
```

## When to Create Agents

- Task requires deep specialized knowledge
- Work can be isolated from main workflow
- Multiple perspectives needed on same problem
- Parallel workstreams would speed delivery
