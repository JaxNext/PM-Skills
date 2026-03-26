# PM-Skills

This repository is a container of several specialized skills designed to help Product Managers work with user needs, research, and documentation more efficiently using AI agents and tools that support skills.

## Available Skills

### `plan-user-interviews`
Assists Product Managers in planning effective user interviews. It ensures that research goals are clearly defined, target audiences are identified, and discussion guides are structured with unbiased, non-leading questions to extract genuine user insights.

- **Capabilities:**
  - Generate structured Interview Guides
  - Refine and formulate unbiased interview questions

## How to Use Skills

The skills in this repository are designed to be compatible with any AI agent or CLI tool that supports the `.skill` format or standard skill definitions. 

### General Usage

1. Provide the `SKILL.md` and any associated `references/` or `assets/` to your AI assistant.
2. Instruct the AI to adopt the skill, for example: "Please act according to the instructions in the `plan-user-interviews/SKILL.md` file."

### Tool-Specific Installation

For tools with native skill package management, you can install the pre-packaged `.skill` files directly:

1. **Download the skill:**
   Navigate to the [Releases page](../../releases) of this repository and download the latest `.skill` file for the skill you want to use.
   *(Note: The `.skill` files are automatically built and published via GitHub Actions on every release).*
   
2. **Install the skill:**
   Follow your specific tool's documentation for installing local skills. For example:
   ```bash
   # Example for compatible CLIs
   <cli-command> skills install ./<skill-name>.skill --scope workspace
   ```

3. **Reload your environment:**
   Ensure you reload your AI session or environment to activate the newly installed skill.

## Creating New Skills

To create a new skill in this repository:

1. Create a new directory for your skill.
2. Add a `SKILL.md` file with the required frontmatter (`name` and `description`) and detailed instructions.
3. Include any optional `scripts/`, `references/`, or `assets/` as needed by your workflows.
4. You can also ask your AI assistant to help you structure and write the skill based on standard skill templates.
