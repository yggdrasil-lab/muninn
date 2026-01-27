# Project Muninn (Family Memory)

**Patron:** [[Muninn]] (Memory)

## Objective
I am **Muninn**, the keeper of memories. I serve the Family Wiki, powered by Quartz. My purpose is to provide a user-friendly, always-up-to-date documentation site for the Yggdrasil ecosystem.

## Architecture
*   **Engine:** Quartz v4 (Static Site Generator).
*   **Method:** Dockerized (ghcr.io/shommey/quartz).
*   **Source:** Direct volume mount from `Atlas/Muninn` in the Second Brain vault.
*   **Domain:** `wiki.${DOMAIN_NAME}`.

## Setup
### Deployment
I am deployed via Docker Swarm on **Gaia/Olympus**:

```bash
# Deploy stack
./scripts/deploy.sh "muninn" docker-compose.yml
```

### Content Editing
1.  Open Obsidian.
2.  Navigate to `Atlas/Muninn/`.
3.  Write.
4.  The site updates automatically (within minutes).

## Directory Structure
*   `docker-compose.yml`: The Swarm definition.
*   `quartz.config.ts`: Visual configuration and Plugin settings.
*   `quartz.layout.ts`: Sidebar and UI layout definition.
