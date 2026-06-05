# aws-nextflow-ngs-pipeline

Cloud-native NGS analysis pipeline built with Nextflow, Docker, AWS-ready infrastructure, and Infrastructure as Code principles.

## Project Goal

This project demonstrates a reproducible bioinformatics workflow for processing next-generation sequencing (NGS) data using containerized tools and workflow automation.

The current pipeline performs:

* Raw FASTQ quality control (FastQC)
* Read trimming (Trim Galore)
* Quality control after trimming (FastQC)

The project is being extended toward a complete AWS Batch-based NGS workflow.

## Current Workflow

```text
FASTQ
  ↓
FastQC
  ↓
Trim Galore
  ↓
FastQC (trimmed reads)
```

## Technologies

* Nextflow
* Docker
* Git & GitHub
* Linux (WSL2)
* FastQC
* Trim Galore
* AWS (planned)
* Terraform (planned)

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
└── README.md
```

## Running the Pipeline

```bash
nextflow run main.nf -with-docker
```

## Example Output

The workflow generates:

```text
results/
├── fastqc/
│   ├── R1_fastqc
```
