# aws-nextflow-ngs-pipeline

Cloud-native NGS analysis pipeline built with AWS Batch, Nextflow, Docker and Terraform.

## Project goal

This project demonstrates a reproducible bioinformatics workflow for processing next-generation sequencing data on AWS.

The pipeline takes raw FASTQ files and performs:

- quality control
- read trimming
- alignment
- variant calling
- final MultiQC report generation

## Tech stack

- AWS S3
- AWS Batch
- AWS ECR
- Nextflow
- Docker
- Terraform
- Python / Bash
- FastQC
- Trim Galore
- BWA
- Samtools
- BCFtools
- MultiQC

## Architecture

```text
FASTQ files
   ↓
S3 input bucket
   ↓
Nextflow workflow
   ↓
AWS Batch jobs
   ↓
Docker containers from ECR
   ↓
S3 output bucket
   ↓
MultiQC report
```

## Pipeline steps

1. Upload FASTQ files to S3
2. Run quality control with FastQC
3. Trim low-quality reads
4. Align reads to a reference genome
5. Sort and index BAM files
6. Call variants
7. Generate a MultiQC report

## Repository structure

```text
.
├── main.nf
├── nextflow.config
├── modules/
├── docker/
├── terraform/
├── scripts/
└── README.md
```

## Why this project matters

Bioinformatics teams increasingly use cloud platforms to process genomic data at scale. This project shows practical experience with cloud infrastructure, reproducible workflows, containerized tools and NGS data analysis.

## Status

Work in progress.






