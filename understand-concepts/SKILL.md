---
name: understand-concepts
description: A guided mental framework and SOP to quickly understand unfamiliar concepts. Use this skill when the user asks you to explain, summarize, or help them understand a new concept, framework, term, or methodology.
---

# Understand Concepts

## Overview

This skill provides a structured Standard Operating Procedure (SOP) to help users rapidly build an explainable, verifiable, and transferable mental model of any unfamiliar concept. Instead of just providing a definition, you will guide the user through a mental framework consisting of 6 phases and 10 steps to deeply understand "what it is", "why it exists", "how it works", "how it is used", and "how to apply it in practice".

**Crucial Output Requirements:**
1. **Single Source of Truth:** The `.md` file is the ONLY place where the concept explanation lives. All content — explanations, diagrams, checkpoints, exercises, and evaluations — is written into this file. Do NOT spread information across chat messages and the file. Chat is for interaction and evaluation; the file is for knowledge.
2. **One-Shot Generation:** Generate the complete `.md` file in one pass, including all phases, checkpoints, exercises, and the progress tracker. The file is a self-contained study guide that the user walks through at their own pace.
3. **Language:** All output MUST be in **English** by default. If the user explicitly specifies a different language preference, that language MUST be used instead for both the file content and chat interaction.
4. **Visuals:** You MUST include visual aids. Use **Mermaid.js** diagrams (preferred) or high-quality **ASCII art** to illustrate structural relationships, lifecycles, and processes wherever possible.
5. **Fact-Checking & Sources:** Before generating the explanation, you MUST use web search tools (like `google_web_search` or `web_fetch`) to find the most up-to-date and authoritative information about the concept. Compare this searched info with your own intrinsic knowledge. If you find conflicts, conduct deeper research to resolve them. If a conflict cannot be resolved, include the conflicting viewpoints and references in the output to inform the user. At the very end of the markdown document, include a "References" section listing the sources you consulted.

## Validation System

This skill uses a **two-tier validation system** with a **user-driven, self-paced** interaction model:

- **Tier 1: Phase Checkpoints** — Lightweight "pings" at the end of each phase to catch gross misunderstandings before they compound.
- **Tier 2: Feynman Gate & Integration Test** — Full comprehension tests at critical junctures: a comprehensive gate before practice, and an integration test after everything.

**Interaction Model:** The user reads the `.md` file at their own pace. When they encounter a checkpoint or gate, they stop, formulate their answer, and send it to the AI in chat. The AI evaluates the answer, provides feedback, and updates the progress tracker in the file. The user then continues reading.

```
Phase 1 → ⏸️ Checkpoint 1 → Phase 2 → ⏸️ Checkpoint 2 → Phase 3 → ⏸️ Checkpoint 3
→ Phase 4 → ⏸️ Checkpoint 4 → ⏸️🔒 Feynman Gate → Phase 5 (exercises) → Phase 6 → ⏸️ Integration Test
```

**Stop-and-Check Markers:** Each checkpoint and gate in the `.md` file is marked with a clear visual separator that instructs the user to stop reading and test themselves before proceeding further.

## Progress Table of Contents

Every generated `.md` file MUST start with a **Progress Table of Contents** — a combined table of contents and progress tracker. Each entry is a clickable link to its section in the file, with a checkbox indicating its completion status. This serves as both navigation and progress tracking.

The AI updates the checkboxes (by editing the file) after each evaluation is completed.

```markdown
## 📊 Progress

- [ ] [**Phase 1: Establish Cognitive Anchors**](#phase-1-establish-cognitive-anchors)
  - [ ] [Step 1: Definition Segmentation](#step-1-definition-segmentation)
  - [ ] [Step 2: Purpose Inquiry](#step-2-purpose-inquiry)
  - [ ] ✅ [Checkpoint 1](#checkpoint-1)
- [ ] [**Phase 2: Build Structural Framework**](#phase-2-build-structural-framework)
  - [ ] [Step 3: Element Deconstruction & Stakeholder Mapping](#step-3-element-deconstruction--stakeholder-mapping)
  - [ ] [Step 4: Process Restoration](#step-4-process-restoration)
  - [ ] ✅ [Checkpoint 2](#checkpoint-2)
- [ ] [**Phase 3: Establish Association Network**](#phase-3-establish-association-network)
  - [ ] [Step 5: Analogical Transfer](#step-5-analogical-transfer)
  - [ ] [Step 6: Contrastive Distinction](#step-6-contrastive-distinction)
  - [ ] ✅ [Checkpoint 3](#checkpoint-3)
- [ ] [**Phase 4: Validation and Deepening**](#phase-4-validation-and-deepening)
  - [ ] [Step 7: Case Analysis](#step-7-case-analysis)
  - [ ] ✅ [Checkpoint 4](#checkpoint-4)
  - [ ] 🔒 [Step 8: Feynman Gate](#step-8-feynman-gate)
- [ ] [**Phase 5: Applied Practice**](#phase-5-applied-practice)
  - [ ] [Step 9: Practice Design & Execution](#step-9-practice-design--execution)
- [ ] [**Phase 6: Integration Test**](#phase-6-integration-test)
  - [ ] [Step 10: Integration Test (Capstone)](#step-10-integration-test)
```

As each step/checkpoint/gate is completed, the AI updates the corresponding checkbox to `- [x]` in the file.

## Workflow

When triggered, apply the following SOP to generate the complete concept explanation as a single `.md` file. The user then walks through it at their own pace, interacting with the AI at each checkpoint.

### Pre-Step: Complexity Triage & Information Gathering

1. **Triage:** Assess the complexity of the concept first:
   - Simple Term: Plan to write a concise explanation covering Phase 1 and 2. A quick web search is sufficient.
   - Complex Framework: Plan a comprehensive explanation covering all 6 phases. Deeper, multi-source web research is required.
   If unsure, ask the user how deep they want to go.
2. **Concept-Type Classification:** Determine which practice mode(s) from the Practice Taxonomy (see Phase 5) best fit this concept. Consider the concept's nature:
   - **Implementable:** Can be built or coded (e.g., frameworks, algorithms, design patterns) → leans toward **Build**.
   - **Decision-oriented:** Involves choices under constraints (e.g., strategies, heuristics, economic principles) → leans toward **Simulate**.
   - **Analytical:** A lens or framework for understanding reality (e.g., mental models, theories, methodologies) → leans toward **Deconstruct**.
   - **Testable:** Can be verified through observation or experiment (e.g., cognitive biases, behavioral effects, optimization techniques) → leans toward **Experiment**.
   Most concepts benefit from combining 2 modes. For Simple Terms, one mode suffices; for Complex Frameworks, use 2-3 modes.
3. **Research:** Based on the complexity assessed in Triage, search the web for the latest, most accurate information to ensure your explanation is up-to-date and factually correct. Remember to verify findings against your intrinsic knowledge as per the Fact-Checking requirements.
4. **Generate the complete `.md` file** with all phases, checkpoints, exercises, the progress tracker, and references. Do this in one pass.

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

> ---
> ⏸️ **Checkpoint 1** — Before moving on, answer this in your own words:
>
> **What is [concept] and why does it exist? Use your own analogy.**
>
> Send your answer to the AI for evaluation. Do not read further until you've attempted this.
> ---

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

> ---
> ⏸️ **Checkpoint 2** — Before moving on, answer this in your own words:
>
> **Walk me through how [concept] works, step by step. What are the key components and how do they interact?**
>
> Send your answer to the AI for evaluation. Do not read further until you've attempted this.
> ---

### Phase 3: Establish Association Network

**Step 5: Analogical Transfer - Connect "Known" with "Unknown"**
- Reference the analogy from Step 1 when distinguishing this concept from similar ones in Step 6. This creates a mental loop back to the user's cognitive anchor.

**Step 6: Contrastive Distinction - Clarify "Similar but different"**
- List 3-5 concepts that are most easily confused with this concept.
- Create a Markdown table comparing them across dimensions: Core purpose, Applicable scenarios, Key elements, and Essential differences.

> ---
> ⏸️ **Checkpoint 3** — Before moving on, answer this in your own words:
>
> **How would you explain the difference between [concept] and [most similar concept] to a colleague who keeps mixing them up?**
>
> Send your answer to the AI for evaluation. Do not read further until you've attempted this.
> ---

### Phase 4: Validation and Deepening (Deep Dive)

**Step 7: Case Analysis - See "How it is actually used"**
- Provide **3 different types of cases**: A successful application, a failed application, and a controversial application.
- Analyze each case: how it was applied, what went well/poorly, and the result.
- Summarize the **best practices** and **common pitfalls**.

> ---
> ⏸️ **Checkpoint 4** — Before moving on, answer this in your own words:
>
> **What's the most common mistake people make when applying [concept], and why does it happen?**
>
> Send your answer to the AI for evaluation. Do not read further until you've attempted this.
> ---

**Step 8: Feynman Gate - Comprehensive Understanding Check**

This is a **quality gate** before practice. Practicing with wrong mental models cements errors. Do NOT proceed to Phase 5 until you can confidently answer this.

> ---
> 🔒 **Feynman Gate** — You must pass this before moving to Phase 5.
>
> **Scenario:** A team at your company is considering adopting [concept] to solve [problem]. They come to you for advice. Explain:
> 1. What it is and why they might need it (Phase 1)
> 2. How it would work in their context (Phase 2)
> 3. What alternatives they might confuse it with (Phase 3)
> 4. What could go wrong based on past cases (Phase 4)
>
> **Evaluation criteria:** Your answer must demonstrate accurate definition, correct structural understanding, clear boundary-drawing vs. similar concepts, and practical awareness of pitfalls.
>
> Send your answer to the AI for evaluation. If the AI identifies gaps, revisit the relevant phase(s) and try again with a different scenario.
> ---

### Phase 5: Applied Practice - Get Hands Dirty

**Step 9: Practice Design & Execution - Turn knowledge into procedural skill**

Declarative knowledge (knowing *what*) is fragile without procedural knowledge (knowing *how*). This step bridges that gap by designing hands-on exercises tailored to the concept's nature. Use the **Practice Taxonomy** below to select appropriate practice modes based on the Concept-Type Classification from the Pre-Step.

#### Practice Taxonomy

| Mode | Best For | Core Action | Feedback Mechanism |
|---|---|---|---|
| **🔧 Build** | Implementable/technical concepts | Create a minimal working artifact | Does it run/produce the expected output? |
| **🎲 Simulate** | Decision/strategy concepts | Make decisions under realistic constraints | Compare your decision to expert or documented outcomes |
| **🔍 Deconstruct** | Analytical/framework concepts | Reverse-engineer a real-world example using the concept | Does the framework accurately predict or explain what happened? |
| **🧪 Experiment** | Testable/hypothesis-driven concepts | Design & run a micro-experiment | Does real-world observation match the concept's prediction? |
| **🗣️ Teach** | All concepts (supplementary) | Explain to a real person and observe where they struggle | Their confusion reveals your gaps |

#### How to Design Exercises

1. **Select modes:** Based on the Concept-Type Classification, choose 1-3 practice modes. Complex concepts with multiple facets should use multiple modes to cover different aspects.
2. **Design exercises:** For each selected mode, design **1-2 concrete exercises**. Each exercise must:
   - Be **completable in one sitting** (15-40 minutes)
   - Target a **specific aspect** of the concept (when using multiple exercises, ensure they cover different key points)
   - Include at least **one common pitfall** identified in Phase 4's Case Analysis
   - Provide a **real feedback loop** — the user must be able to observe whether they applied the concept correctly, not just assume they did
3. **Present exercises progressively:** Start with the most structured exercise (closest to guided practice) and move toward less structured ones (closest to independent application). This creates a gradual release of scaffolding.
4. **Include evaluation guidance:** For each exercise, include a brief description of what a correct application looks like and what common mistakes to watch for. This allows the user to self-evaluate, and also gives the AI a rubric for evaluation when the user shares their work.
5. **Wait for the user to complete exercises:** When the user shares their exercise work in chat, the AI evaluates it:
   - Point out specific gaps between their application and the ideal
   - Celebrate correct applications, especially creative ones
   - Offer targeted hints if the user is stuck, rather than giving the answer

#### Example Exercises by Mode

**🔧 Build:**
- *Next.js* → Build a 1-page app using SSR and client-side navigation. Deploy it and verify the HTML source contains server-rendered content.
- *Observer Pattern* → Implement a minimal pub/sub system. Then add a scenario where a subscriber throws an error — observe whether other subscribers still receive events.
- *SQL Indexing* → Create a table with 100K rows, write a slow query, add an index, then run EXPLAIN ANALYZE to measure the improvement.

**🎲 Simulate:**
- *Opportunity Cost* → You have 2 weeks and $5K. Choose between 3 project proposals. Defend your choice using the framework. Then reveal what each would have yielded.
- *Scrum Sprint Planning* → Given a backlog with estimates and dependencies, plan a 2-week sprint. Then compare your plan to how an experienced Scrum Master would plan it.
- *Loss Aversion* → Offer 3 friends a gamble framed as a gain vs. the same gamble framed as a loss. Record whether framing changes their choice and discuss why.

**🔍 Deconstruct:**
- *Positioning (Marketing)* → Pick a real brand (e.g., Volvo), reverse-engineer their positioning statement, then compare to their actual marketing campaigns.
- *Separation of Powers* → Take a specific government crisis and map which powers were invoked, crossed, or contested. Identify the consequences.
- *Database Normalization* → Take a real messy spreadsheet and identify which normal form violations exist. Refactor it step by step through each normal form.

**🧪 Experiment:**
- *Hawthorne Effect* → Track your own productivity for a week with and without self-observation. Compare the results.
- *Connection Pooling* → Benchmark API response times with and without pooling under simulated concurrent load.
- *Spacing Effect* → Study a topic using massed practice one day and spaced practice another day. Test recall after 1 week.

**🗣️ Teach:**
- *Any concept* → Explain to a colleague using a whiteboard. Note the 3 questions they ask that you can't answer — those are your real knowledge gaps.

### Phase 6: Integration Test

**Step 10: The Integration Test - Capstone Validation**

After completing both theoretical understanding and hands-on practice, verify that you can **integrate all knowledge** — not just reproduce definitions, but synthesize across phases into coherent, actionable thinking.

> ---
> ⏸️ **Integration Test** — Final capstone. Answer this to complete your learning:
>
> **You're consulting for a team that's considering adopting [concept]. Make your case for or against, addressing:**
> 1. What it is and why they might need it
> 2. How it would work in their context
> 3. What alternatives they might confuse it with
> 4. What could go wrong
> 5. What your first practical step would be
>
> **Evaluation criteria:**
> - **Accuracy** — Are the facts correct?
> - **Integration** — Do you connect insights across phases, or just list them separately?
> - **Practicality** — Does your recommendation show procedural knowledge from the exercises?
> - **Nuance** — Do you acknowledge caveats, tradeoffs, and edge cases?
>
> Send your answer to the AI for evaluation.
> ---

### Final Step: References

Ensure the `.md` file ends with a **References** section containing links to the authoritative sources you found during your initial web search. Also note any unresolved conflicts discovered during your research.

### AI Evaluation Behavior

When the user sends a checkpoint, gate, or test answer in chat, the AI MUST:

1. **Evaluate the answer** — Assess whether it meets the stated criteria for that checkpoint/gate/test.
2. **Provide specific feedback** — Gently correct misunderstandings, praise accurate insights, and offer one clarifying metaphor if needed.
3. **Update the Progress Table of Contents** — Edit the `.md` file to mark the completed item as `- [x]` in the Progress Table of Contents.
4. **If the user fails a gate:** Identify which phase(s) the gap is in, suggest what to revisit, and invite the user to try again with a different scenario. Do NOT just give the correct answer.

For Phase 5 exercises, when the user shares their work:
1. Evaluate whether the concept was applied correctly using the evaluation guidance.
2. Point out specific gaps between their application and the ideal.
3. Celebrate correct applications, especially creative ones.
4. Offer targeted hints if the user is stuck, rather than giving the answer.
5. Update the Progress Table of Contents to mark Step 9 as completed once all exercises are done.
