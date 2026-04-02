---
name: solution-prd-breaker
description: Breaks down a complex Solution Spec into a Master PRD and a set of Sub-PRDs, then coordinates their generation. Use when you need to translate a large system or epic solution into multiple detailed PRDs.
---

# Solution PRD Breaker

This skill helps product managers take a large-scale Solution Specification (Epic) and break it down into a structured hierarchy of Product Requirements Documents (PRDs) ensuring no logic conflicts or missing requirements. It uses an industry-standard "Master + N Sub-PRDs" approach and coordinates with the `feature-prd-writer` skill to generate the individual Sub-PRDs.

## Boundaries

**When to use:**
- The user provides a comprehensive Solution Specification and asks to write PRDs for the entire system or an epic.
- A single solution is too large to fit into one PRD and needs to be structurally broken down to distribute to different teams or to manage complexity.

**DO NOT use when:**
- The user asks for a PRD of a single, simple feature or page (use `feature-prd-writer` instead).
- The user is in the early conceptual ideation phase without a firm solution spec (use `hmw-solution-ideator`).

## Workflow

When asked to break down a solution into PRDs, follow these steps sequentially:

### Step 1: User Story Mapping
To determine exactly what PRDs are needed, first perform a User Story Mapping exercise based on the Solution Spec. Map it out using a markdown table or nested list:
1. **Backbone (The major steps):** Identify the key core steps the user takes from left to right (e.g., Register -> Find Product -> Checkout -> Track).
2. **Stories (The features):** Vertically list all the necessary features and functionalities under each major step.
3. **Slicing MVP (The boundary):** Clearly delineate which stories belong to the current MVP version (V1.0) and which are deferred to later phases. *Note: All deferred stories must be collected and preserved in a "Future Scope / Backlog" list.*

### Step 2: Analyze and Choose the Slicing Strategy
Based on the User Story Map, group the MVP stories into logical Sub-PRDs using one or a combination of the following strategies:
1. **By Terminal & Role (Most Common):** Splitting by user persona and terminal (e.g., C-end User App, B-end Merchant Portal, Delivery App, Admin Dashboard).
2. **By Business Domain:** Grouping by high-cohesion business logic (e.g., Account System, Shopping Cart & Checkout, Order & Payment).
3. **By User Journey Stage:** Splitting a long linear process by life cycle (e.g., Pre-sales, In-sales, Post-sales).

*Present the User Story Map, the proposed slicing strategy, and the list of planned Sub-PRDs to the user for approval before proceeding.*

### Step 3: Create the Master PRD
A Master PRD acts as the index, global rulebook, and architectural skeleton. It does not contain specific page interactions.
Generate a `master_prd.md` document with the following structure:

- **Global Business Flow:** A Markdown Mermaid flowchart (e.g., `flowchart TD`) showing the end-to-end user flow across all sub-modules and terminals.
- **Global State Machine:** A Mermaid state diagram (e.g., `stateDiagram-v2`) for the core entity traversing the system (e.g., Order Status, Ticket Status).
- **Data Dictionary / ER Diagram:** Definition of core global nouns and definitions to maintain consistency across Sub-PRDs.
- **Sub-PRD Index:** A list of the Sub-PRDs to be generated, assigning clear responsibilities to each module.
- **Future Scope / Backlog:** A dedicated section listing all the stories and features that were sliced out of the MVP during the User Story Mapping phase, ensuring they are documented for V2.0+ roadmap planning.

### Step 4: Define Boundaries and Handoffs
Within the Master PRD, carefully define the "handoffs" between the Sub-PRDs to prevent integration bugs:
- **Data Handoff:** What are the input conditions and output data for each Sub-PRD? (e.g., Module A passes `selected_item_ids` and `total_price` to Module B).
- **State Handoff:** Where does one Sub-PRD's responsibility end? (e.g., The Transaction PRD updates the state to "Paid", and from that point, the Fulfillment PRD takes over).

### Step 5: Generate Sub-PRDs using `feature-prd-writer`
Once the Master PRD is complete and approved, iterate through the Sub-PRD Index.
For each Sub-PRD, invoke the `feature-prd-writer` skill to generate its detailed requirements. 
Provide the `feature-prd-writer` with:
- The context from the Master PRD.
- The specific module boundaries, data inputs, and state handoff rules.
- The specific functionality to be covered.

Save each generated Sub-PRD as a separate markdown file (e.g., `[module_name]_prd.md`).
