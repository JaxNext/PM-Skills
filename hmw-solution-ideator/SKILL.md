---
name: hmw-solution-ideator
description: Use this skill when you need to brainstorm conceptual solutions for "How Might We" (HMW) questions, evaluate their ROI using RICE scoring and T-shirt sizing, and identify the best fit solution.
---

# HMW Solution Ideator

This skill helps product managers and designers brainstorm and evaluate potential solutions to "How Might We..." (HMW) questions. It takes prioritized HMW questions, generates conceptual solutions, evaluates them, and determines the best approach.

## Boundaries

**When to use:**
- The user provides an ordered markdown file or a list of "How might we...?" questions and asks for solutions.
- The user asks to brainstorm features or concepts to solve specific user pain points.
- The user asks to evaluate conceptual product solutions using RICE or T-shirt sizing.

**DO NOT use when:**
- The user asks for detailed technical architecture, database schemas, or code implementations.
- The user asks to analyze raw interview transcripts (use `user-interview-analyzer` instead).

## Workflow

When asked to brainstorm solutions for HMW questions, follow this step-by-step process:

### Step 1: Read the Input
Review the provided markdown file or list of prioritized HMW questions. Ensure you understand the core need and context behind each question.

### Step 2: Brainstorm Solutions
For each HMW question, ideate 3 to 5 distinct conceptual solutions.
- Keep the solutions at the concept level without deep technical details.
- For each solution, provide a concise 1-2 sentence description covering:
  - **Touchpoint:** Where the solution happens (e.g., Mobile Dashboard, Onboarding Flow, Email Notification).
  - **Core Mechanism:** How it works (the primary action or logic).
  - **Value:** What the user gains (the direct benefit).

### Step 3: Evaluate ROI
For every proposed solution, evaluate its Return on Investment (ROI) using the following models:
- **RICE Model:** Estimate Reach, Impact, Confidence, and Effort. Provide a brief justification for the scores.
- **Cost Estimation:** Use the T-shirt sizing method (S, M, L, XL) to estimate the development and implementation cost (where S is very low cost/effort, and XL is very high). Note: The "Effort" in RICE can align with this T-shirt size.

### Step 4: Determine the Best Fit
Based on the ROI evaluation and cost estimation, select the single best-fit solution for each HMW question. State why this solution was chosen over the others (e.g., highest impact for the lowest cost).

### Step 5: Generate Markdown Output
Synthesize the brainstormed solutions, evaluations, and final decisions into a structured markdown report.

#### Output Structure Format
Use the following markdown structure for your final output:

```md
# Ideation & Solution Evaluation

## 1. HMW: [Insert How Might We Question Here]
*Context: [Brief summary of the core need being addressed]*

### Proposed Solutions
**Solution A: [Name of Solution]**
- **Description:** [1-2 sentences]
- **Touchpoint:** [Where it happens]
- **Core Mechanism:** [How it works]
- **Value:** [What user gains]
- **Evaluation:**
  - *RICE Score:* R: X, I: Y, C: Z, E: W (Total Score: [Score])
  - *Cost (T-Shirt Size):* [S/M/L/XL]

**Solution B: [Name of Solution]**
- **Description:** [1-2 sentences]
- **Touchpoint:** [Where it happens]
- **Core Mechanism:** [How it works]
- **Value:** [What user gains]
- **Evaluation:**
  - *RICE Score:* R: X, I: Y, C: Z, E: W (Total Score: [Score])
  - *Cost (T-Shirt Size):* [S/M/L/XL]

*(Repeat for 3-5 solutions)*

### Recommended Solution
**[Name of Best Fit Solution]**
*Why:* [Brief justification based on ROI and cost evaluation].

---
## 2. HMW: [Insert Next How Might We Question Here]
*(Repeat the structure for each HMW question)*
```

Save the final result into a new markdown file named `hmw_solutions.md` (or another appropriate name requested by the user).
