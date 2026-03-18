# Securing IaC: Detecting Terraform Security Smells with fine-tuned LLMs
This repository contains the evaluation dataset for our study on detecting code smells in Terraform Infrastructure as Code (IaC) using Large Language Models.
Paper title: "Securing IaC: Detecting Terraform Security Smells with fine-tuned LLMs"

## Dataset

- **Folder:** [dataset](dataset) — contains Terraform sample folders and the dataset script.
- **Script:** [dataset/dataset_creation.py](dataset/dataset_creation.py) — scans Terraform files and generates a JSON Lines dataset for LLM training.
- **What it does:** The script scans `dataset/1.code_smell_tf_file` for `.tf` files. Files prefixed with `f_` are treated as negative examples (no smell) and files prefixed with `t_` are treated as positive examples (smell present). The smell label is inferred from the parent subfolder name (for `t_` files).
- **Run it:**

```bash
cd dataset
python3 dataset/dataset_creation.py
```

- **Output:** [dataset/dataset.jsonl](dataset/dataset.jsonl) — a newline-delimited JSON file where each line is an object with the keys `instruction`, `input` (the Terraform source), and `output` (a JSON string with the expected `issues.code_smell_type`).
- **Notes:**
	- The script currently uses the relative path `./1.code_smell_tf_file` inside the `dataset` directory. Edit the `folder_path` variable in the script if you need to point to a different samples directory.
	- The `instruction` field in each record contains guidance and requires the model to respond with a pure JSON object (no extra text).

# License
MIT License, see [LICENSE](../LICENSE).
