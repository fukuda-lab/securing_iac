# Securing IaC Datasets

This repository contains two datasets used for research on securing Infrastructure as Code (IaC), specifically targeting Terraform code smells.

## 1. COMPSAC 2025 Dataset ([compsac25/](compsac25/))

This dataset was developed for a conference paper at COMPSAC 2025. It consists of a synthetic collection of Terraform files categorized by various code smells.

**Location:**
[compsac25/synthetic_dataset/](compsac25/synthetic_dataset/)

**Categories included:**
- `admin_by_default`
- `complex_expression`
- `deprecated_statement_usage`
- `empty_password`
- `hard-coded_secret`
- `incomplete_conditional`
- `incomplete_tasks`
- `insufficient_key_size`
- `invalid_port_ranges`
- `invalid_property_value`
- `law_of_demeter`
- `suspicious_comment`
- `unrestricted_ip_address`
- `weak_crypto__algo_`

## 2. COMPSAC Special Issue 2026 Dataset ([compsac_special_issue26/](compsac_special_issue26/))

This dataset is an expanded version developed for a journal paper (COMPSAC Special Issue 2026). It includes both raw Terraform files and a structured JSONL file for machine learning tasks.

**Location:** 
[compsac_special_issue26/dataset/](compsac_special_issue26/dataset/)

**Contents:**
- `1.code_smell_tf_file/`: Raw `.tf` samples organized by type (`admin_by_default`, `empty_password`, `hard_coded_secret`, `insufficient_key_size`, `suspicious_comment`, `unrestricted_ip_address`, `weak_crypto__algo_`).
- `dataset.jsonl`: A structured dataset containing 1,382 entries with instructions, Terraform code snippets, and ground truth labels for code smell detection.
- `dataset_creation.py`: The script used to generate the dataset.

# License
MIT
