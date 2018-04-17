#!/bin/bash -e
#This cript is based on a Akom's Tech Ruminations script. I've added a user input to make it more flexible.

if [ -z "$2" ] ; then
        echo "Usage: Enter the file name and the number of pages"
fi

#Additions

echo -e "\n"
read -e -p "Enter filename, use tab for completion: " PDF
echo -e "\n"
echo "Arquivo selecionado: " ls  "$PDF"
echo -e "\n"
read -p "Enter the number of pages: " NUM

#Original script

for PAGE in $(seq -f "%05g" 1 $NUM) ; do
        echo "Processing page $PAGE"
        pdftk "$PDF" cat $PAGE output temp.pdf
        echo "Split PDF"
        convert -density 300 temp.pdf -depth 8  -fill white -draw 'rectangle 10,10 20,20' -background white -flatten +matte temp.tiff
        echo "Converted to TIFF"
        tesseract -l por temp.tiff tmp.pdf_"${PAGE}" pdf 
        rm -f temp.tiff temp.pdf
	echo "Temp files removed"
done


pdftk tmp.pdf_*.pdf output ocr-output.pdf  && rm -f tmp.pdf_*.pdf
echo "Output written to ocr-output.pdf"
 
