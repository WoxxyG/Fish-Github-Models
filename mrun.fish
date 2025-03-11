function mrun
    # If no arguments are provided, simply run "gh models run"
    if test (count $argv) -eq 0
        gh models run
        return
    # If only one argument is provided, treat it as the prompt and use gpt-4o
    else if test (count $argv) -eq 1
        set model_full "gpt-4o"
        set prompt $argv[1]
    else if test (count $argv) -ge 2
        set key $argv[1]

        # Map shorthand keys to the corresponding full model names.
        switch $key
            # OpenAI Models
            case "4o"; set model_full "gpt-4o"
            case "4om"; set model_full "gpt-4o-mini"
            case "o1"; set model_full "o1"
            case "o1m"; set model_full "o1-mini"
            case "o1p"; set model_full "o1-preview"
            case "o3m"; set model_full "o3-mini"

            # Mistral Models
            case "m3b"; set model_full "Ministral-3B"
            case "ml"; set model_full "Mistral-large"
            case "ml24"; set model_full "Mistral-Large-2411"
            case "mnemo"; set model_full "Mistral-Nemo"
            case "ms"; set model_full "Mistral-small"

            # Llama Models
            case "l3.2-11v"; set model_full "Llama-3.2-11B-Vision-Instruct"
            case "l3.2-90v"; set model_full "Llama-3.2-90B-Vision-Instruct"
            case "l3.3-70"; set model_full "Llama-3.3-70B-Instruct"
            case "ml3-70"; set model_full "Meta-Llama-3-70B-Instruct"
            case "ml3-8"; set model_full "Meta-Llama-3-8B-Instruct"
            case "ml3.1-405"; set model_full "Meta-Llama-3.1-405B-Instruct"
            case "ml3.1-70"; set model_full "Meta-Llama-3.1-70B-Instruct"
            case "ml3.1-8"; set model_full "Meta-Llama-3.1-8B-Instruct"

            # Cohere Models
            case "ccr"; set model_full "Cohere-command-r"
            case "ccr08"; set model_full "Cohere-command-r-08-2024"
            case "ccrp"; set model_full "Cohere-command-r-plus"
            case "ccrp08"; set model_full "Cohere-command-r-plus-08-2024"

            # AI21 Jamba Models
            case "j15l"; set model_full "AI21-Jamba-1.5-Large"
            case "j15m"; set model_full "AI21-Jamba-1.5-Mini"

            # DeepSeek Models
            case "dsr1"; set model_full "DeepSeek-R1"
            case "dsv3"; set model_full "DeepSeek-V3"

            # JAIS Models
            case "jais30"; set model_full "jais-30b-chat"

            # Codestral Models
            case "c25"; set model_full "Codestral-2501"

            # Phi Models
            case "p3m-128"; set model_full "Phi-3-medium-128k-instruct"
            case "p3m-4k"; set model_full "Phi-3-medium-4k-instruct"
            case "p3mi-128"; set model_full "Phi-3-mini-128k-instruct"
            case "p3mi-4k"; set model_full "Phi-3-mini-4k-instruct"
            case "p3s-128"; set model_full "Phi-3-small-128k-instruct"
            case "p3s-8k"; set model_full "Phi-3-small-8k-instruct"
            case "p3.5mi"; set model_full "Phi-3.5-mini-instruct"
            case "p3.5moe"; set model_full "Phi-3.5-MoE-instruct"
            case "p3.5vi"; set model_full "Phi-3.5-vision-instruct"
            case "p4"; set model_full "Phi-4"
            case "p4mi"; set model_full "Phi-4-mini-instruct"
            case "p4mm"; set model_full "Phi-4-multimodal-instruct"

            case "*"
                # If no mapping exists, assume the key is actually part of the prompt.
                set model_full "gpt-4o"
                set prompt (string join " " $argv)
                gh models run $model_full "$prompt"
                return
        end

        # Join the remaining arguments as the prompt.
        set prompt (string join " " $argv[2..-1])
    else
        echo "Usage: mrun [<shortcut>] "<prompt>""
        return 1
    end

    # Run the model
    gh models run $model_full "$prompt"
end
