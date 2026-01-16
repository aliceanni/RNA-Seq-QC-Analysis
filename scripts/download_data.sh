#!/bin/bash

# ID del dataset RNA-Seq (Saccharomyces cerevisiae)
ID="SRR21630138"

echo "Inizio download del dataset $ID..."

# 1. Scarica i dati compressi
prefetch $ID

# 2. Estrai i file FASTQ (usiamo fasterq-dump che è più veloce di fastq-dump)
# --split-files gestisce correttamente i dati paired-end
echo "Conversione in formato FASTQ..."
fasterq-dump --split-files $ID --outdir ./rnas_udemy

echo "Download completato. I file si trovano nella cartella /rnas_udemy"
