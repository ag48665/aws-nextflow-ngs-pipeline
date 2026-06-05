# aws-nextflow-ngs-pipeline

A cloud-ready bioinformatics pipeline for next-generation sequencing (NGS) data processing built with Nextflow, Docker and Infrastructure as Code principles.

## Overview

This project demonstrates the development of a reproducible and containerized bioinformatics workflow for processing sequencing data.

The pipeline is designed to follow modern DevOps and Bioinformatics best practices:

* workflow automation with Nextflow
* containerized execution with Docker
* reproducible analyses
* modular pipeline architecture
* cloud-ready deployment design
* version-controlled infrastructure

The long-term goal is to extend the workflow for execution on AWS Batch using Terraform-managed infrastructure.

---

## Workflow

Current implementation:

```text
FASTQ
  ↓
FastQC
  ↓
Trim Galore
  ↓
FastQC (trimmed reads)
```

Planned production workflow:

```text
FASTQ
  ↓
FastQC
  ↓
Trim Galore
  ↓
FastQC
  ↓
BWA Alignment
  ↓
SAMtools
  ↓
BCFtools Variant Calling
  ↓
MultiQC Report
```

---

## Technologies

### Workflow & DevOps

* Nextflow
* Docker
* Git
* GitHub
* Linux (Ubuntu / WSL2)

### Bioinformatics Tools

* FastQC
* Trim Galore

### Cloud & Infrastructure

* AWS Batch (planned)
* AWS S3 (planned)
* AWS ECR (planned)
* Terraform (planned)

---

## Repository Structure

```text
.
├── main.nf
├── nextflow.config
├── modules/
│   ├── fastqc.nf
│   └── trimgalore.nf
├── docker/
│   ├── fastqc/
│   └── trimgalore/
├── data/
├── results/
├── terraform/
└── README.md
```

---

## Running the Pipeline

### Requirements

* Docker
* Nextflow
* Linux / WSL2

### Execute

```bash
nextflow run main.nf -with-docker
```

---

## Example Output

```text
results/
├── fastqc/
│   ├── R1_fastqc.html
│   ├── R1_fastqc.zip
│   ├── R1_trimmed_fastqc.html
│   └── R1_trimmed_fastqc.zip
└── trimgalore/
    └── R1_trimmed.fq
```

---

## Skills Demonstrated

This project demonstrates practical experience with:

* workflow orchestration
* Docker containerization
* Linux command-line environments
* Git version control
* modular pipeline design
* reproducible bioinformatics workflows
* cloud-ready architecture
* NGS data quality control

---

## Future Development

Planned enhancements:

* MultiQC integration
* BWA alignment module
* SAMtools processing
* BCFtools variant calling
* AWS Batch execution
* S3 input/output storage
* Terraform deployment automation
* CI/CD integration with GitHub Actions

---

## Author

**Agata Gabara**

Bioinformatics | Cloud Computing | DevOps for Life Sciences

GitHub: https://github.com/ag48665

---

## Project Status

🚧 Active development

Current version includes FastQC and Trim Galore modules running successfully in Docker containers through Nextflow.
