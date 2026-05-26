---
title: ResearchMind
emoji: 🧠
colorFrom: purple
colorTo: indigo
sdk: docker
app_port: 7860
pinned: false
---

# ResearchMind — Multi-Agent Research System
ResearchMind is a small multi-agent research pipeline built with LangChain and OpenAI-style LLMs. Four specialized agents collaborate — searching the web, scraping content, drafting a structured research report, and critiquing the result — to produce concise, sourced research reports on any topic.

## Key Features
* **Multi-agent design:** Separate agents for search, reading (scraping), writing, and critique.
* **Writer & critic chains:** Re-usable prompt chains for generating and evaluating polished reports.
* **Streamlit UI:** Simple web UI for interactive runs and result inspection.

## Repository layout
* `agents.py` — Agent and prompt definitions (search, reader, writer, critic).
* `pipeline.py` — Scriptable research pipeline (CLI-friendly).
* `app.py` — Streamlit interface to run the pipeline and explore outputs.
* `tools.py` — Helper tools (e.g., web search, scraping utilities) used by agents.
* `requirements.txt` — Python dependencies.
* `Dockerfile` — Configuration for Hugging Face deployment.

## Getting started
### Prerequisites
* Python 3.10 or newer
* An OpenAI-compatible API key (set in environment)

### Install
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt