---
name: understand-concepts
description: A guided mental framework and SOP to quickly understand unfamiliar concepts. Use this skill when the user asks you to explain, summarize, or help them understand a new concept, framework, term, or methodology.
---

# Understand Concepts

## Overview

This skill provides a structured Standard Operating Procedure (SOP) to help users rapidly build an explainable, verifiable, and transferable mental model of any unfamiliar concept. Instead of just providing a definition, you will guide the user through a mental framework consisting of 4 phases and 8 steps to deeply understand "what it is", "why it exists", "how it works", and "how it is used".

**Crucial Output Requirements:**
1. **File Output:** The final explanation MUST be generated and saved as a Markdown (`.md`) file in the user's workspace (e.g., `concept-name.md`).
2. **Language:** All output MUST be in **English**.
3. **Visuals:** You MUST include visual aids. Use **Mermaid.js** diagrams (preferred) or high-quality **ASCII art** to illustrate structural relationships, lifecycles, and processes wherever possible.
4. **Fact-Checking & Sources:** Before generating the explanation, you MUST use web search tools (like `google_web_search` or `web_fetch`) to find the most up-to-date and authoritative information about the concept. Compare this searched info with your own intrinsic knowledge. If you find conflicts, conduct deeper research to resolve them. If a conflict cannot be resolved, include the conflicting viewpoints and references in the output to inform the user. At the very end of the markdown document, include a "References" section listing the sources you consulted.

## Workflow

When triggered, apply the following SOP to explain the concept to the user. You can present the information phase by phase, or summarize it based on the complexity triage.

### Pre-Step: Complexity Triage & Information Gathering

1. **Triage:** Assess the complexity of the concept first:
   - Simple Term: Plan to write a concise explanation covering Phase 1 and 2. A quick web search is sufficient.
   - Complex Framework: Plan a comprehensive explanation covering all 4 phases. Deeper, multi-source web research is required.
   If unsure, ask the user how deep they want to go.
2. **Research:** Based on the complexity assessed in Triage, search the web for the latest, most accurate information to ensure your explanation is up-to-date and factually correct. Remember to verify findings against your intrinsic knowledge as per the Fact-Checking requirements.

### Phase 1: Establish Cognitive Anchors

**Step 1: Definition Segmentation - Clarify "What it is" and "What it is not"**
- Extract 3 core keywords from authoritative definitions (usually noun + verb).
- List what this concept is **absolutely not** to dispel common misconceptions.
- Provide a preliminary definition in one sentence.
- Provide **one best analogy** from everyday life or a familiar field. Briefly explain the key **similarities** and **differences** to help the user build an immediate mental hook.

**Step 2: Purpose Inquiry - Find out "Why it exists"**
- Answer 3 consecutive "Why"s:
  1. What specific problem is this concept designed to solve?
  2. How did people solve this problem before this concept existed?
  3. What were the fatal flaws of the old methods?
- Determine the **cost of inaction**: What happens if we DON'T use this concept or solve this problem?
- State the **core value proposition** of this concept in one sentence.

### Phase 2: Build Structural Framework

**Step 3: Element Deconstruction & Stakeholder Mapping - Identify "What it is made of" and "Who is involved"**
- List the **core components** of this concept (usually 3-7).
- Identify the **key stakeholders/roles** involved in the concept's lifecycle.
- Describe the relationships between elements and stakeholders.
- **Visual Requirement:** Draw a Mermaid graph (e.g., entity-relationship or flowchart) or ASCII diagram to show how the components and stakeholders interact.

**Step 4: Process Restoration - Figure out "How it works"**
- Restore the **complete lifecycle** of this concept from start to finish.
- Detail the **key steps** in order, including inputs, outputs, and judgment conditions.
- Identify the **critical nodes** and **risk points**.
- **Visual Requirement:** Draw a Mermaid flowchart or sequence diagram illustrating the step-by-step process.

### Phase 3: Establish Association Network

**Step 5: Analogical Transfer - Connect "Known" with "Unknown"**
- Reference the analogy from Step 1 when distinguishing this concept from similar ones in Step 6. This creates a mental loop back to the user's cognitive anchor.

**Step 6: Contrastive Distinction - Clarify "Similar but different"**
- List 3-5 concepts that are most easily confused with this concept.
- Create a Markdown table comparing them across dimensions: Core purpose, Applicable scenarios, Key elements, and Essential differences.

### Phase 4: Validation and Deepening (Deep Dive)

**Step 7: Case Analysis - See "How it is actually used"**
- Provide **3 different types of cases**: A successful application, a failed application, and a controversial application.
- Analyze each case: how it was applied, what went well/poorly, and the result.
- Summarize the **best practices** and **common pitfalls**.

### Phase 5: Interactive Validation

**Step 8: The Reverse Feynman Test - Check the User's Understanding**
After delivering the `.md` document, do NOT just say goodbye. Instead, actively test the user's comprehension.
- **Action:** Ask the user to explain the concept back to you in their own words, using an analogy they came up with, OR present them with a tricky hypothetical scenario and ask how the concept applies.
- **Evaluation:** Once the user replies, evaluate their answer. Gently correct any misunderstandings, praise accurate insights, and offer one final clarifying metaphor if needed.

### Final Step: References
Ensure the generated Markdown file ends with a **References** section containing links to the authoritative sources you found during your initial web search. Also note any unresolved conflicts discovered during your research.