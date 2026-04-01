---
name: solution-spec-writer
description: Use this skill when you need to expand a conceptual product solution into a comprehensive, well-structured solution document or product spec, including MVP scope, data flow diagrams, entities, and risks.
---

# Solution Spec Writer

This skill helps product managers and system designers take a concept-level best solution (e.g., from an HMW ideation phase) and expand it into a comprehensive, well-structured solution document.

## Boundaries

**When to use:**
- The user asks to expand a conceptual solution or HMW solution into a full product specification.
- The user needs to document the MVP scope, data flow (swimlane diagram), data entities, metrics, and risks for a proposed solution.

**DO NOT use when:**
- The user wants to brainstorm new ideas from scratch (use `hmw-solution-ideator` instead).
- The user wants to analyze raw user interviews (use `user-interview-analyzer` instead).

## Workflow

When asked to write a solution document or specification for a conceptual solution, follow these steps sequentially:

### Step 1: Analyze the Solution Concept
Review the input provided by the user (the concept-level solution description, including touchpoint, core mechanism, and value). Identify the overarching goal and target audience.

### Step 2: Define MVP Scope
Determine the absolute Minimum Viable Product (MVP) scope required to deliver the core value. Delineate clearly what is *in* scope for the first iteration and what is *out* of scope (deferred to later phases).

### Step 3: Draw Swimlane Diagram
Create a Markdown Mermaid swimlane diagram (`sequenceDiagram` or `flowchart`) to map out the core business data and operational flow.
- Identify the key actors/systems (e.g., User, Frontend, Backend, Third-Party API).
- Map the step-by-step operation flow from start to finish.

### Step 4: Extract Entities & Data Objects
Identify the key business modules and data objects required to make this solution work.
- E.g., User Profile Module, Transaction Object, Notification Record.
- Define what data each object holds conceptually.

### Step 5: Identify Risks & Dependencies
List out potential risks that could jeopardize the solution. Consider:
- **Legal/Compliance Issues:** Data privacy, regulations.
- **Third-Party Dependencies:** Relying on external APIs or partner services.
- **Technical/Operational Risks:** Scalability, edge cases, user adoption hurdles.

### Step 6: Generate the Solution Document
Synthesize the details gathered from the steps above into a well-structured markdown file. Provide actionable success metrics to measure the solution's impact.

#### Output Structure Format
Use the following markdown structure for your final output:

```md
# Solution Specification: [Solution Name]

## 1. Why (Background and Target)
*What is the problem being solved? Who is the target user? What is the ultimate goal?*

## 2. What (Core Business Solution Design)
*Detailed description of the solution, the touchpoints, and the core mechanisms.*

## 3. How (Core Business Flow Diagram)
*Mermaid swimlane diagram showing the data and operation flow.*

\`\`\`mermaid
sequenceDiagram
    participant U as User
    participant S as System
    U->>S: Initiates action
    S-->>U: Returns result
\`\`\`

## 4. Scope (MVP)
**In Scope:**
- Feature A
- Feature B

**Out of Scope (Future phases):**
- Feature C

## 5. Entities & Data Objects
*List key business modules and data objects.*
- **[Object Name]:** [Brief description of the data it holds]
- **[Module Name]:** [Brief description of the module's responsibility]

## 6. Success Metrics
*How will we measure the success of this solution?*
- **Metric A:** [Target/Description]
- **Metric B:** [Target/Description]

## 7. Risks & Dependencies
*What could go wrong?*
- **Legal/Compliance:** [Description]
- **Third-Party APIs:** [Description]
- **Other Risks:** [Description]
```

Save the final result into a new markdown file named `solution_spec.md` (or another appropriate name requested by the user).