# ResearchMind — Multi-Agent Research System

ResearchMind is a small multi-agent research pipeline built with LangChain and OpenAI-style LLMs. Four specialized agents collaborate — searching the web, scraping content, drafting a structured research report, and critiquing the result — to produce concise, sourced research reports on any topic.

**Key Features**
- **Multi-agent design**: Separate agents for search, reading (scraping), writing, and critique.
- **Writer & critic chains**: Re-usable prompt chains for generating and evaluating polished reports.
- **Streamlit UI**: Simple web UI for interactive runs and result inspection.

**Repository layout**
- [agents.py](agents.py) — Agent and prompt definitions (search, reader, writer, critic).
- [pipeline.py](pipeline.py) — Scriptable research pipeline (CLI-friendly).
- [app.py](app.py) — Streamlit interface to run the pipeline and explore outputs.
- [tools.py](tools.py) — Helper tools (e.g., web search, scraping utilities) used by agents.
- [requirements.txt](requirements.txt) — Python dependencies.

Getting started
---------------

Prerequisites
 - Python 3.10 or newer
 - An OpenAI-compatible API key (set in environment)

Install
```
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Environment
 - Create a `.env` file in the project root with your API key (the code uses python-dotenv):

```
OPENAI_API_KEY=sk-...
```

If you are using an alternative OpenAI-compatible provider or Azure, set the provider-specific vars according to that provider's SDK requirements.

Run the pipeline (CLI)
----------------------
Run a simple interactive pipeline from the terminal:

```
python pipeline.py
```

The script will prompt for a research topic and print the search results, scraped content, final report, and critic feedback.

Run the Streamlit app (web UI)
-----------------------------
Start the Streamlit UI to run the pipeline interactively and download the report:

```
streamlit run app.py
```

Usage notes
-----------
- The project expects the helper tools in `tools.py` to provide `web_search` and `scrape_url` tool wrappers used by the agents.
- Model configuration is set in `agents.py` using `ChatOpenAI`. Adjust `model` and `temperature` there as needed.
- Long-running web calls and scraping can be slow; the Streamlit app uses spinners to surface progress.



