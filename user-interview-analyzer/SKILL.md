---
name: user-interview-analyzer
description: Use this skill when you need to analyze user interview records, transcripts, or user need descriptions. It provides a structured workflow to extract valuable sentences, identify pain points and habits, and categorize them into a specific Markdown report.
---

# User Interview Analyzer

This skill helps you process user interview records, transcripts, or user need descriptions to extract, label, and categorize valuable insights. The final output is a structured markdown file.

## Boundaries

**When to use:**
- The user asks to "analyze this interview transcript" or "summarize user research"
- The user wants to extract "pain points", "habits", or "needs" from a user research document

**DO NOT use when:**
- Summarizing general articles, technical documentation, or meeting minutes that are not related to user research.

## Workflow

When asked to analyze a user interview record or need description, follow this multi-step process:

### Step 1: Extract Valuable Sentences
Read through the provided document(s) thoroughly.
Identify and extract sentences or quotes that provide meaningful insight into the user's needs. Look specifically for:
- **Pain Points:** Frustrations, difficulties, or inefficiencies the user experiences.
- **Habits & Workflows:** How the user currently completes tasks, tools they use, and their operational environment.
- **Sweet Points:** Features, capabilities, or outcomes that the user particularly likes, values, or gets excited about.
- **Expectations:** What the user explicitly asks for, hopes to see, or assumes will happen in a solution.
- **Other Meaningful Parts:** Any other sentences that offer deep understanding of the user's goals and context.

### Step 2: Label the Sentences
Assign concise, descriptive labels to each extracted sentence.
- The labels should be short phrases (e.g., "Data Entry Inefficiency", "Prefers Visual Dashboard", "Requires Export to Excel").
- They can represent the type of pain point, the specific use case, or the desired operation result.
- A single sentence can have multiple labels if applicable.

### Step 3: Categorize by Core Need
Group the labeled sentences into distinct, logical categories based on thematic similarities in their labels and meanings.
- Put sentences with related meanings into the same category.
- Give each category a meaningful, overarching name that clearly expresses the core user need or core pain point (e.g., "Need for Automated Reporting", "Friction in Cross-Team Collaboration").

### Step 4: Generate Markdown Output
Synthesize the extracted, labeled, and categorized data into a single markdown file output.

#### Output Structure Format
Use the following markdown structure for your final output:

```md
# User Interview Analysis

## 1. [Category Name: Core Need / Core Pain Point]
*Brief description of this core need based on the findings.*

- **[Label 1, Label 2]** "Exact quote or extracted sentence from the user."
- **[Label 3]** "Another extracted sentence."

## 2. [Category Name: Core Need / Core Pain Point]
*Brief description of this core need based on the findings.*

- **[Label 4]** "Exact quote or extracted sentence from the user."
...
```

Save the final result into a new markdown file named `interview_analysis.md` (or another appropriate name requested by the user).
