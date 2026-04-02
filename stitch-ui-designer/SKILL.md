---
name: stitch-ui-designer
description: Use this skill when you need to design UIs, wireframes, or screens using Google Stitch. It clarifies requirements, confirms with ASCII wireframes, and leverages Stitch MCP tools to generate and refine designs.
---

# Stitch UI Designer

This skill helps product managers and designers turn feature descriptions into high-fidelity UI designs using Google Stitch via MCP. It emphasizes up-front alignment using ASCII wireframes to minimize costly redesigns in Stitch.

## Boundaries

**When to use:**
- The user provides descriptions of a business module, page, or feature and wants to generate a UI design.
- The user asks to draw wireframes or UI designs using Google Stitch.

**DO NOT use when:**
- The user is asking for text-based Product Requirements Documents without UI design (use `feature-prd-writer`).
- The user is asking to brainstorm solutions from scratch without UI focus (use `hmw-solution-ideator`).

## Workflow

When asked to design a UI using Stitch, follow these step-by-step instructions:

### Step 1: Clarify & Gather Requirements
**Do not generate any designs yet.** Keep asking the user targeted questions to gather key points about the business module, page, or feature. You need to know:
- **Target Audience & Goal:** Who is using this, and what is the primary action?
- **Key Elements:** What buttons, tables, forms, or charts are necessary?
- **Design Mode (Device Type):** Is this for `DESKTOP`, `MOBILE`, or `TABLET`?
- **Branding/Theme:** Are there specific colors, fonts, or roundness preferences?

### Step 2: ASCII Wireframe Confirmation
To prevent unnecessary and costly redesigns in Stitch, draw a **Low-Fidelity ASCII Wireframe** (using Markdown or code blocks) that represents the layout based on the gathered requirements.
- Present the ASCII wireframe to the user.
- Ask for their explicit confirmation or any required tweaks.
- **Do not proceed to Stitch generation until the user approves the ASCII layout.**

### Step 3: Stitch Project & Design System Setup
Once the layout is approved, set up the Stitch environment:
- **Availability Check:** Verify if Stitch MCP is connected (e.g., call `mcp_stitch_list_projects`).
- **Create Project:** Use `mcp_stitch_create_project` to create a dedicated project for this design.
- **Set up Design System:** If specific themes were requested, use `mcp_stitch_create_design_system` to define typography, color modes (Light/Dark), and shapes. Note: Apply the design system using `mcp_stitch_apply_design_system` to the screens later if necessary.

### Step 4: Prompt Optimization & Generation
Translate the approved ASCII wireframe and user requirements into a highly descriptive prompt for Stitch.
- **Prompt Optimization:** Use spatial language (e.g., "Top navigation bar with logo on left, avatar on right," "Two-column layout," "Card grid"). Be explicit about text content and UI controls.
- **Generate:** Call `mcp_stitch_generate_screen_from_text`. Set the `deviceType` (e.g., `MOBILE`, `DESKTOP`) based on earlier clarification.

### Step 5: Iteration & Variations (If needed)
Present the generated result (or its attributes) to the user. If the user wants adjustments:
- **Minor Tweaks:** Use `mcp_stitch_edit_screens` with a prompt specifying the exact changes.
- **Explore Options:** Use `mcp_stitch_generate_variants`. Configure `variantOptions` (e.g., `creativeRange: EXPLORE`, specific `aspects: [LAYOUT, COLOR_SCHEME]`) to provide 3 alternative designs.

### Step 6: Final Output
Once the design is finalized, output the project and screen identifiers to the user.
- **Output:** Provide the user with the Stitch Project ID, Screen IDs, and (if applicable) a clear message that they can view the preview links in their Stitch workspace.

## Must-Knows & MCP Abilities
- **mcp_stitch_create_project:** Container for UI designs.
- **mcp_stitch_generate_screen_from_text:** Core generation tool. Takes `prompt` and `deviceType`.
- **mcp_stitch_edit_screens:** Modifies existing screens.
- **mcp_stitch_generate_variants:** Generates 1-5 variants focusing on layout, color, images, or text.
- **mcp_stitch_create_design_system:** Establishes global tokens (fonts, colors, roundness).

## References & Documentation
If you need deeper context on prompt optimization, design modes, or MCP references, read the URLs listed in [`references/stitch_docs.md`](references/stitch_docs.md).