# KnowledgeFlow — Obsidian-to-Hugo Publishing Pipeline

# CURRENTLY NOT ACTIVE POSTING ⚠️
Apparently, I am not a good blog post writer.

## Overview
This project is an automated personal publishing system built on **Hugo**.  
It is designed to convert and publish writing from an **Obsidian-based notes workflow** into a production-ready static blog, then deploy updates automatically through GitHub Actions.

For portfolio/CV purposes, this repository represents an end-to-end content operations pipeline: **authoring → transformation → static build → continuous deployment**.

## Features
- Obsidian-oriented content sync workflow using PowerShell + Python utilities.
- Automated markdown/image normalization for Hugo-compatible post structure.
- Hugo static-site generation with the Blowfish theme.
- Continuous deployment to **GitHub Pages** on every push to `main`.
- Modular content organization (`content/posts`, taxonomies, media assets).

## Tech Stack
- **Static Site Generator:** Hugo
- **Theme:** Blowfish (Git submodule)
- **Automation Scripts:** PowerShell, Python
- **CI/CD:** GitHub Actions
- **Hosting:** GitHub Pages (`gh-pages` branch)

## How It Works
1. Content is authored in Obsidian.
2. `scripts/update_content.ps1` mirrors note files into a temporary workspace and runs `scripts/images.py`.
3. Image links and post structure are transformed into Hugo-friendly format.
4. Content is copied into `content/posts`.
5. Hugo builds the site into `public/`.
6. A push to `main` triggers the GitHub Actions workflow to rebuild and deploy to `gh-pages`.

## Deployment & Automation
Deployment is defined in:

- `.github/workflows/gh-pages.yml`

Current workflow behavior:
- Trigger: `push` to `main`
- Build command: `hugo --minify`
- Deploy action: `peaceiris/actions-gh-pages` publishing `./public` to `gh-pages`

> Note: Obsidian sync paths inside `scripts/update_content.ps1` and `scripts/images.py` are currently machine-specific and should be adapted for your environment.

## Local Development
This project can be run locally with a standard Hugo workflow.

```bash
# clone with theme submodule
git clone --recurse-submodules https://github.com/nurasik14/Learning-Blog.git
cd Learning-Blog

# local preview (includes drafts)
hugo server -D

# production build
hugo --minify
```

If you use the Obsidian sync pipeline, update the local paths in:
- `scripts/update_content.ps1`
- `scripts/images.py`

Then run the sync script from repository root (PowerShell):

```powershell
./scripts/update_content.ps1
```

## License
This project is licensed under the terms of the **MIT License**.  
See [`LICENSE`](LICENSE) for details.
