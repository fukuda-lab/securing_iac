import os
import json
import random

def create_dataset_from_tf_files():
    """
    Scans a directory for Terraform files, creates a JSONL dataset,
    shuffles it, and then saves it to a file.

    This script prompts the user for a directory path. It then recursively
    scans through the subdirectories to find '.tf' files. Based on the
    filename prefix ('f_' or 't_'), it constructs a JSON object with
    pre-defined instruction and output formats. All records are collected,
    shuffled, and then written to a 'dataset.jsonl' file.
    """
    # Get the directory from the user
    while True:
        # folder_path = input("Enter the path to the main folder: ")
        folder_path = "./1.code_smell_tf_file"
        if os.path.isdir(folder_path):
            break
        print("Error: The provided path is not a valid directory. Please try again.")

    # Define the output file path in the same directory as the script
    output_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'dataset.jsonl')

    # Instruction text to be used in the JSON objects
    instruction_text = (
        "Analyze this Terraform code for the following specific code smells.\n\n"
        "{\n"
        " 'admin_by_default': \"Resource configurations or IAM roles automatically grant administrative privileges by default.\", \n"
        " 'empty_password': \"A password as zero-length string.\",\n"
        " 'hard_coded_secret': \"Secrets such as usernames and passwords are hardcoded instead of using a variable or password management platform.\",\n"
        " 'insufficient_key_size': \"The size of a key used by an encryption algorithm is less than the recommended key size, e.g., 2048 bits for RSA.\",\n"
        " 'suspicious_comment': \"A comment includes information indicating secrets and buggy implementations.\",\n"
        " 'unrestricted_ip_address': \"Using '0.0.0.0' or '::' as server binding addresses, allowing unrestricted access.\",\n"
        " 'weak_crypto__algo_': \"A weak cryptographic algorithm is used instead of a stronger alternative.\"\n\n"
        "}\n\n"
        "IMPORTANT: You MUST respond with a valid JSON object."
        "Do not include any text, explanations, or markdown formatting before or after the JSON object."
        "Output Format:\n{\n  \"issues\": {\n    \"code_smell_type\": \"<name_of_smell_or_null>\"\n  }\n}"
    )
    
    all_data = []
    print(f"Scanning directory: {folder_path}")

    try:
        # Walk through the directory structure to collect all data
        for subdir, _, files in os.walk(folder_path):
            subfolder_name = os.path.basename(subdir)

            for filename in files:
                if filename.endswith('.tf'):
                    file_path = os.path.join(subdir, filename)
                    
                    try:
                        with open(file_path, 'r', encoding='utf-8') as f_in:
                            tf_content = f_in.read()

                        data = {"instruction": instruction_text, "input": tf_content}

                        if filename.startswith('f_'):
                            data["output"] = json.dumps({"issues": {"code_smell_type": None}})
                            print(f"  - Processing 'false' file: {file_path}")
                        elif filename.startswith('t_'):
                            output_obj = {"issues": {"code_smell_type": subfolder_name}}
                            data["output"] = json.dumps(output_obj)
                            print(f"  - Processing 'true' file: {file_path} (Code Smell: {subfolder_name})")
                        else:
                            print(f"  - Skipping file (does not start with 'f_' or 't_'): {file_path}")
                            continue
                        
                        # Add the generated dictionary to our list
                        all_data.append(data)

                    except Exception as e:
                        print(f"Error processing file {file_path}: {e}")

    except Exception as e:
        print(f"An unexpected error occurred during file scanning: {e}")
        return

    # Shuffle the collected data
    print(f"\nCollected {len(all_data)} records. Shuffling the dataset...")
    random.shuffle(all_data)

    # Write the shuffled data to the output file
    print(f"Writing shuffled data to {output_file}...")
    try:
        # Open the output file in write mode to overwrite any previous content
        with open(output_file, 'w', encoding='utf-8') as f_out:
            for item in all_data:
                f_out.write(json.dumps(item) + '\n')
    except IOError as e:
        print(f"Error writing to the output file {output_file}: {e}")
        return

    print("\nDataset creation complete.")
    print(f"The shuffled dataset has been saved to '{output_file}'.")


if __name__ == "__main__":
    create_dataset_from_tf_files()
