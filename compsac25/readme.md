# Harnessing the Power of LLMs for Code Smell Detection in Terraform IaC

This directory contains the synthetic dataset used in [our study](https://doi.org/10.1109/COMPSAC65507.2025.00075) on detecting code smells in Terraform Infrastructure as Code (IaC) using Large Language Models. The synthetic dataset provides small, labeled Terraform examples for common code smell categories to support experimentation, and reproducible evaluation.

**About the synthetic dataset**
- Purpose: provide concise, human-readable Terraform snippets that illustrate individual IaC code smells across multiple categories.
- Format: each code smell category is a separate folder containing several Terraform (`.tf`) example files (named like `example_1.tf`, `example_2.tf`, ...). Files are intended for education, model input, or simple automated scanning.

**Folder structure (this directory)**
- `synthetic_dataset/` — main synthetic dataset directory (contains one folder per smell category).
- `readme.md` — this file (dataset description and usage notes).

**Code smell categories included**
Inside `synthetic_dataset/` you'll find the following category folders (each folder contains small `.tf` examples demonstrating the smell):
- `admin_by_default/`
- `complex_expression/`
- `deprecated_statement_usage/`
- `empty_password/`
- `hard-coded_secret/`
- `incomplete_conditional/`
- `incomplete_tasks/`
- `insufficient_key_size/`
- `invalid_port_ranges/`
- `invalid_property_value/`
- `law_of_demeter/`
- `suspicious_comment/`
- `unrestricted_ip_address/`
- `weak_crypto__algo_/`

**Publication & Citation**
If you use this dataset or our methodology, please cite our COMPSAC 2025 paper:

```bibtex
@inproceedings{vo2025harnessing,
  title={Harnessing the Power of LLMs for Code Smell Detection in Terraform Infrastructure as Code},
  author={Vo, Quoc-Huy and Dao, Ha and Fukuda, Kensuke},
  booktitle={2025 IEEE 49th Annual Computers, Software, and Applications Conference (COMPSAC)},
  pages={533--542},
  year={2025},
  organization={IEEE}
}
```

DOI: 10.1109/COMPSAC65507.2025.00075

# License
MIT License, see [LICENSE](LICENSE).
