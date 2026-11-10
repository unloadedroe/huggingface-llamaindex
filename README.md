# Hugging Face + LlamaIndex Sample

This project demonstrates a minimal LlamaIndex app that calls a Hugging Face inference model using the Hugging Face API integration.

## Features

- Uses `llama-index-llms-huggingface-api`
- Uses `llama-index-embeddings-huggingface`
- Loads a Hugging Face token from a `.env` file
- Runs a simple completion example with `Qwen/Qwen2.5-Coder-32B-Instruct`

## Prerequisites

- Python 3.10+
- A Hugging Face account with access to the model you want to call
- A valid `HF_TOKEN` in your environment or `.env` file

## Setup

Create and activate the project environment:

```bash
./setup-env.sh
source .venv/bin/activate
```

The setup script installs the project dependencies with `uv` and creates the local virtual environment if it does not already exist.

## Environment variables

Create a `.env` file in the project root:

```bash
HF_TOKEN=your_huggingface_token_here
```

The app loads this file via `python-dotenv`.

## Run the app

```bash
./run-app.sh
```

Or directly:

```bash
source .venv/bin/activate
python app.py
```

## Dependencies

The project currently pins:

```txt
llama-index-llms-huggingface-api==0.8.0
llama-index-embeddings-huggingface==0.8.0
python-dotenv==1.1.1
```

## Notes

- The model may require access approval on Hugging Face.
- If the request fails, confirm your token is valid and the model is accessible with your account.
- For local development, the environment is intentionally isolated in `.venv`.
