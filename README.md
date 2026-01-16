# RNA-Seq Data Retrieval and Quality Control Analysis

## Project Overview
This project demonstrates the initial stages of an RNA-Seq bioinformatics pipeline, focusing on data acquisition from the **NCBI Sequence Read Archive (SRA)** and subsequent **Quality Control (QC)** assessment.

## Pipeline Steps
1. **Data Retrieval**: Automated download of raw sequencing data using `sra-toolkit`.
2. **Format Conversion**: Conversion of '.sra' files to '.fastq' format.
3. **Quality Control**: Comprehensive sequence analysis using 'FastQC'.

## Tools Used
* **SRA Toolkit**: 'prefetch' and 'fasterq-dump'
* **FastQC**: For high-throughput sequence data quality analysis.
* **Environment**: Ubuntu (WSL) / Conda

## Case Study: Dataset SRR21630138
During the execution of this pipeline on the dataset **SRR21630138** (Saccharomyces cerevisiae), a critical QC analysis was performed.

### QC Findings & Interpretation
Upon analyzing the FastQC report, the following issues were identified:
* **Per Base Sequence Quality**: Most bases fell below the Phred Q20 threshold (1% error rate), indicating poor sequencing quality or potential degradation.
* **Sequence Duplication Levels**: High levels of duplication were observed, suggesting PCR bias during library preparation.
* **Decision**: Based on these metrics, the dataset was deemed unsuitable for downstream alignment (Mapping). 

**Outcome**: This case highlights the importance of the "Quality Control" step in preventing "Garbage In, Garbage Out" scenarios in genomic research.

## How to Reproduce
1. Clone the repository: 'git clone https://github.com/aliceanni/RNA-Seq-QC-Analysis.git'
2. Run the download script: 'bash scripts/download_data.sh`
3. Run the QC script: 'bash scripts/run_fastqc.sh'
