---
name: feature-prd-writer
description: Use this skill when you need to write a detailed, professional Product Requirements Document (PRD) for a single feature, specific page, or an atomic module (which may contain multiple tightly coupled pages) based on industry-standard structures.
---

# Feature PRD Writer

This skill helps product managers write a highly professional, detailed Product Requirements Document (PRD) for a **single feature, single page, or an atomic module** (a discrete unit of functionality that cannot be broken down further, even if it spans a few pages). It ensures that the document provides developers and QA testers with all the necessary details, edge cases, and rules to build and test the feature accurately.

## Boundaries

**When to use:**
- The user asks to write a PRD for a specific feature, page, or an atomic module.
- The user provides feature details and needs them formatted into a comprehensive, developer-ready specification.
- The user wants to document detailed rules (display, input, actions, edge cases, state machines) for a feature or module.

**DO NOT use when:**
- The user asks for a PRD for an entire, multi-module complex system or a whole product from scratch.
- The user is asking for high-level conceptual ideation (use `hmw-solution-ideator` instead).

## Workflow

When asked to write a feature PRD, follow these steps:

### Step 1: Analyze Feature Details
Review the context, requirements, and background provided by the user for the specific feature or page. If critical details (e.g., specific edge cases, tracking requirements, or permission rules) are missing, **ask the user for clarification first**. Only make professional assumptions if the user explicitly allows you to or if they provide incomplete answers after you ask.

### Step 2: Generate the PRD Structure
Write the PRD using the following strict 7-part industry-standard structure, incorporating the "pro-tips" for maximum professional impact. 

Use this exact markdown format for the output:

```md
# PRD: [Feature / Page Name]

## 1. Meta Data
- **Status:** Draft / In Review / In Development
- **Owner:** [PM Name / AI Generated]
- **Revision History:** 
  - *[Date] - Initial Draft created*
- **Related Documents:** [Link to Solution Spec or Design docs if applicable]

## 2. Background & User Story
- **Goal:** [One-sentence description of the goal, e.g., "Add a 'Remind to Ship' button to lower complaint rates."]
- **User Story:** As a [User Persona], I want to [Action/Feature], so that [Benefit/Value].

## 3. Flow & State Machine
*(Describe the logic using Mermaid diagrams)*
- **Business Flow:** 
  - *Briefly describe what frontend, backend, and third-parties do when the user interacts.*
- **State Machine:**
  - *If the feature involves state changes (e.g., Pending -> Active -> Cancelled), draw a Mermaid state diagram. If not applicable, explicitly state "No complex state changes involved."*

## 4. Layout & UI Guidelines
*(If the module spans multiple pages, repeat this section for each page, e.g., Page A, Page B).*
- **Wireframe generation:** 
  - *If the user requests high-fidelity wireframes or UI designs, use the `stitch-ui-designer` skill to generate them via Google Stitch.*
  - *If Stitch is not requested or available, fallback to a **Low-Fidelity Wireframe** using an ASCII art block or Markdown tables to draw a rough structure.*
- **High-Fidelity Link Placeholder:** `[Insert Stitch/Figma/Axure Link Here]`
- **Layout Description:** 
  - *List the main areas (e.g., Top Navigation, Search Bar, List Area, Footer).*
  - *Note: Reference specific areas of your generated/ASCII wireframe using numbered tags (e.g., [1], [2]) for detailed explanations.*

## 5. Detailed Rules (The Core)
*This section must be MECE (Mutually Exclusive, Collectively Exhaustive). If the module spans multiple pages, clearly indicate which page or sub-component the rules apply to.*

### 5.1 Display Rules (Data & UI)
- **Sorting:** [e.g., Chronological, Popularity]
- **Pagination/Loading:** [e.g., Infinite scroll 20 items per fetch, or standard pagination]
- **Field Definitions:** [e.g., Text truncation rules, decimal limits, timestamp formats]

### 5.2 Input Rules (Forms & Fields)
- **Constraints:** [Mandatory/Optional, Character limits, Supported formats]
- **Validation Timing:** [e.g., On Blur, On Submit]
- **Error Messages:** [Exact Toast/Modal copy, e.g., "Invalid phone number."]

### 5.3 Action Rules (Interactions)
- **Feedback:** [e.g., Button loading state, Success Toast "Submitted successfully" and return to previous page]
- **Pre-conditions:** [e.g., Requires logged-in status or VIP tier]

### 5.4 Edge Cases & Empty States (Critical)
- **Empty State:** [Illustration description + Text + CTA button if applicable]
- **Network Errors:** [Timeout/Offline fallback UI and retry mechanisms]
- **Concurrency/Failure:** [e.g., "Item sold out while checking out" exact behavior]

### 5.5 Permissions & Visibility
- **Role Differences:** [e.g., What Admin sees vs. Normal User]

## 6. Tracking & Analytics
- **Exposure/View:** [When should a view event be fired?]
- **Click Events:** [Which buttons need click tracking?]
- **Required Parameters:** [e.g., Send ItemID and PageSource on click]

## 7. Non-Functional & Global Configs
- **Performance:** [e.g., First Paint < 1.5s]
- **Compatibility:** [e.g., iOS 14+, Chrome 90+]
- **Feature Flags / Rollout:** [e.g., AB Test, 10% rollout, or Global Switch]

---

## 8. Crucial Impact & Migration Assessment
- **Impact Analysis:** *Does this new feature break or affect older pages? (e.g., changing a global DB table).*
- **Data Migration:** *How are old, historical records handled with this new feature? (e.g., Default values for legacy users).*
- **Global Standards:** *Note: All standard components (Toasts, Modals, Pagination) inherit from Global UX Design System v2.0.*
```

### Step 3: Output the PRD
Synthesize the details into the markdown structure provided in Step 2. Save the final result into a new markdown file named `[feature_name]_prd.md` (or another appropriate name requested by the user).
