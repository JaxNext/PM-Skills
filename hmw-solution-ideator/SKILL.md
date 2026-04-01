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

### Step 1: Initialize the Output File
Read the provided markdown file or list of prioritized HMW questions. Ensure you understand the core need and context behind each question.
Create a new markdown file (e.g., `hmw_solutions.md` or as requested by the user) to store the ideation results. Write the main header `# Ideation & Solution Evaluation` to this file.

### Step 2: Ideation Loop
For *each* HMW question in the input, perform the following steps and **append** the results to the output file before moving to the next question:

#### A. Brainstorm Solutions
Ideate 3 to 5 distinct conceptual solutions.
- Keep the solutions at the concept level without deep technical details.
- For each solution, provide a concise 1-2 sentence description covering:
  - **Touchpoint:** Where the solution happens (e.g., Mobile Dashboard, Onboarding Flow, Email Notification).
  - **Core Mechanism:** How it works (the primary action or logic).
  - **Value:** What the user gains (the direct benefit).

#### B. Evaluate ROI
For every proposed solution, evaluate its Return on Investment (ROI) using the following models:
- **RICE Model:** Estimate Reach, Impact, Confidence, and Effort. Provide a brief justification for the scores.
- **Cost Estimation:** Use the T-shirt sizing method (S, M, L, XL) to estimate the development and implementation cost (where S is very low cost/effort, and XL is very high). Note: The "Effort" in RICE can align with this T-shirt size.

#### C. Determine the Best Fit
Based on the ROI evaluation and cost estimation, select the single best-fit solution for this HMW question. State why this solution was chosen over the others (e.g., highest impact for the lowest cost).

#### D. Record the Result
Append the full ideation result for this question—including all proposed solutions, their evaluations, and the recommended solution—to the output file using the following structure:

```md
## [Number]. HMW: [Insert How Might We Question Here]
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

*(Record all 3-5 solutions here, not just the final choice)*

### Recommended Solution
**[Name of Best Fit Solution]**
*Why:* [Brief justification based on ROI and cost evaluation].

---
```

*(Repeat the Ideation Loop for every HMW question until all are processed)*