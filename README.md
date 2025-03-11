# Fish GitHub Models

A Fish shell function that provides convenient shortcuts for running AI models via GitHub's CLI models command.

## Description

This tool simplifies the process of interacting with various AI models through GitHub's `gh models run` command. It provides short aliases for different AI models and handles the command construction for you.

## Installation

1. Ensure you have the [GitHub CLI](https://cli.github.com/) installed and configured
2. Make sure the GitHub CLI models plugin is installed:
   ```
   gh extension install github/gh-models
   ```
3. Copy the `mrun.fish` file to your Fish functions directory:
   ```
   cp mrun.fish ~/.config/fish/functions/
   ```
4. Reload your Fish shell or run:
   ```
   source ~/.config/fish/functions/mrun.fish
   ```

## Usage

Basic usage:
```
mrun [model_shortcut] "your prompt here"
```

Without any arguments (launches interactive GitHub Models interface):
```
mrun
```

Without specifying a model (defaults to gpt-4o):
```
mrun "What is the capital of France?"
```

With a specific model:
```
mrun 4om "Explain quantum computing briefly"
```

## Available Model Shortcuts

### OpenAI Models
- `4o`: gpt-4o
- `4om`: gpt-4o-mini
- `o1`: o1
- `o1m`: o1-mini
- `o1p`: o1-preview
- `o3m`: o3-mini

### Mistral Models
- `m3b`: Ministral-3B
- `ml`: Mistral-large
- `ml24`: Mistral-Large-2411
- `mnemo`: Mistral-Nemo
- `ms`: Mistral-small

### Llama Models
- `l3.2-11v`: Llama-3.2-11B-Vision-Instruct
- `l3.2-90v`: Llama-3.2-90B-Vision-Instruct
- `l3.3-70`: Llama-3.3-70B-Instruct
- `ml3-70`: Meta-Llama-3-70B-Instruct
- `ml3-8`: Meta-Llama-3-8B-Instruct
- `ml3.1-405`: Meta-Llama-3.1-405B-Instruct
- `ml3.1-70`: Meta-Llama-3.1-70B-Instruct
- `ml3.1-8`: Meta-Llama-3.1-8B-Instruct

### Cohere Models
- `ccr`: Cohere-command-r
- `ccr08`: Cohere-command-r-08-2024
- `ccrp`: Cohere-command-r-plus
- `ccrp08`: Cohere-command-r-plus-08-2024

### AI21 Jamba Models
- `j15l`: AI21-Jamba-1.5-Large
- `j15m`: AI21-Jamba-1.5-Mini

### DeepSeek Models
- `dsr1`: DeepSeek-R1
- `dsv3`: DeepSeek-V3

### JAIS Models
- `jais30`: jais-30b-chat

### Codestral Models
- `c25`: Codestral-2501

### Phi Models
- `p3m-128`: Phi-3-medium-128k-instruct
- `p3m-4k`: Phi-3-medium-4k-instruct
- `p3mi-128`: Phi-3-mini-128k-instruct
- `p3mi-4k`: Phi-3-mini-4k-instruct
- `p3s-128`: Phi-3-small-128k-instruct
- `p3s-8k`: Phi-3-small-8k-instruct
- `p3.5mi`: Phi-3.5-mini-instruct
- `p3.5moe`: Phi-3.5-MoE-instruct
- `p3.5vi`: Phi-3.5-vision-instruct
- `p4`: Phi-4
- `p4mi`: Phi-4-mini-instruct
- `p4mm`: Phi-4-multimodal-instruct

## License

MIT

## Tags

`fish-shell` `shell-script` `github-cli` `ai-models` `command-line-tool` `cli-wrapper` `productivity` `developer-tools` `llm-interface` `openai` `mistral` `llama` `cohere` `ai21` `deepseek` `phi` `ai-assistant`