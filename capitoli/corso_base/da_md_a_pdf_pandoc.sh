#!/bin/bash

echo "Convertendo file da 010_ a 060_..."

# Il disclaimer è in ../../includes/disclaimer.md
if [[ -f "../../includes/disclaimer.md" ]]; then
    echo "Leggendo disclaimer..."
    DISCLAIMER_CONTENT=$(cat ../../includes/disclaimer.md)
    USE_DISCLAIMER=true
else
    echo "Disclaimer non trovato, continuo senza..."
    USE_DISCLAIMER=false
fi

for file in 0{1,2,3,4,5,6}0_*.md; do
    if [[ -f "$file" ]]; then
        echo "Processando $file..."
        
        if [[ "$USE_DISCLAIMER" == true ]]; then
            # Usa Python per sostituzioni sicure invece di sed
            temp_file="temp_$file"
            python3 -c "
import sys
with open('$file', 'r', encoding='utf-8') as f:
    content = f.read()
with open('../../includes/disclaimer.md', 'r', encoding='utf-8') as f:
    disclaimer = f.read()
content = content.replace('{{includes/disclaimer.md}}', disclaimer)
with open('$temp_file', 'w', encoding='utf-8') as f:
    f.write(content)
"
            input_file="$temp_file"
        else
            # Usa il file originale
            input_file="$file"
        fi
        
        # Nome del PDF di output
        pdf_output="${file%.md}.pdf"
        
        # Estrai il titolo dal nome file per Pandoc
        title=$(basename "$file" .md | sed 's/_/ /g')
        
        # Converti con Pandoc - aggiungi opzioni per file locali
        if pandoc "$input_file" -o "$pdf_output" \
            --pdf-engine=wkhtmltopdf \
            --pdf-engine-opt=--enable-local-file-access \
            --pdf-engine-opt=--load-error-handling=ignore \
            --pdf-engine-opt=--load-media-error-handling=ignore \
            --metadata pagetitle="$title"; then
            echo "✓ Creato: $pdf_output"
        else
            echo "✗ Errore nella conversione di $file"
        fi
        
        # Rimuovi file temporaneo se creato
        [[ -f "$temp_file" ]] && rm -f "$temp_file"
    fi
done

echo "Conversione completata!"