# Skills Directory

This directory contains all the Claude Code skills organized by category. Each category has specific types of skills designed for different use cases.

## Categories

### [Development](development/)
Skills for software development, coding assistance, and programming tasks.

**Use cases:**
- Code generation and refactoring
- Architecture planning
- Debugging assistance
- Code review automation

### [Documentation](documentation/)
Skills for creating and maintaining documentation.

**Use cases:**
- README generation
- API documentation
- Changelog creation
- Wiki management

**Featured Skills:**
- [readme-generator](documentation/readme-generator/SKILL.md) - Generate comprehensive README files

### [Testing](testing/)
Comprehensive testing utilities and frameworks.

**Use cases:**
- Unit test generation
- Integration testing
- E2E test automation
- Test coverage analysis

**Featured Skills:**
- [unit-test-generator](testing/unit-test-generator/SKILL.md) - Generate unit tests for multiple languages

### [Productivity](productivity/)
Enhance your workflow with productivity-focused skills.

**Use cases:**
- Task automation
- Project scaffolding
- Workflow optimization
- Time-saving utilities

### [Creative](creative/)
Tools for design, content creation, and artistic workflows.

**Use cases:**
- Design systems
- Content generation
- Visual prototyping
- Brand guidelines

### [Data Science](data-science/)
Tools for data analysis, visualization, and ML workflows.

**Use cases:**
- Data cleaning and preprocessing
- Visualization generation
- Model training assistance
- Notebook utilities

### [Security](security/)
Security-focused skills for auditing and protection.

**Use cases:**
- Security audits
- Vulnerability scanning
- Dependency analysis
- Code sanitization

### [Automation](automation/)
Workflow automation and orchestration skills.

**Use cases:**
- CI/CD helpers
- Deployment automation
- Monitoring setup
- Alert management

### [Integrations](integrations/)
Skills for connecting external apps, APIs, and managed integration platforms.

**Featured Skills:**
- [aident-skill](integrations/aident-skill/SKILL.md) - Connect agents to Aident Loadout integrations, Vault, MCP, CLI, and audit history

## Contributing a Skill

Want to add your skill to the marketplace?

1. Choose the appropriate category
2. Create a new folder: `category/your-skill-name/`
3. Follow the [Skill Template](../docs/SKILL_TEMPLATE.md)
4. Submit a pull request

See our [Contributing Guidelines](../docs/CONTRIBUTING.md) for detailed instructions.

## Quality Standards

All skills in this marketplace meet these criteria:

- Clear, comprehensive documentation
- Minimal tool permissions (principle of least privilege)
- Security-conscious implementation
- Error handling and edge cases
- Practical examples
- Maintained and tested

## Using Skills

### Install from Marketplace

```bash
# Add the marketplace
claude marketplace add https://github.com/GLINCKER/claude-code-marketplace

# Install a skill
claude skill install readme-generator --from glincker-marketplace
```

### Install Locally

```bash
# Install from local path
claude skill install ./skills/documentation/readme-generator
```

### Use in Claude Code

Once installed, skills are available in your Claude Code sessions:

```
User: "Generate a README for my project"
Claude: [Uses readme-generator skill]
```

## Skill Structure

Each skill follows this structure:

```
skill-name/
├── SKILL.md              # Required: Main skill definition
├── README.md             # Optional: Additional documentation
├── scripts/              # Optional: Helper scripts
│   └── helper.py
└── templates/            # Optional: File templates
    └── template.txt
```

## Browse by Feature

### Code Generation
- [readme-generator](documentation/readme-generator/SKILL.md)
- [unit-test-generator](testing/unit-test-generator/SKILL.md)

### Analysis & Review
Coming soon!

### Automation
Coming soon!

## Need Help?

- Check the [Skill Template](../docs/SKILL_TEMPLATE.md)
- Read existing skills for examples
- Ask in [Discussions](https://github.com/GLINCKER/claude-code-marketplace/discussions)
- Review [Claude Code Skills Documentation](https://code.claude.com/docs/en/skills.md)

---

**Happy coding with Claude Code!**
