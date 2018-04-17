#!/bin/bash -e
#This cript is based on a Akom's Tech Ruminations script. I've added a user input to make it more flexible.


#Additions

select_file(){
	
	read -e -p "Enter filename, use tab for completion: " PDF
	echo -e "\n"
	echo -e "Arquivo selecionado: " "\e[34m\033[1m$PDF\033[0m\e[0m"
	echo -e "\n"
	read -r -p "Continue? [y/n] " response
	if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]] ; then
		read -p "Enter the number of pages: " NUM
	
	else
		echo -e "\n\033[1m\e[31mTry again\e[0m\033[0m \n"
		#if you want the program to restart if the user chooses no, then uncomment the line below and place the path to this script
		#bash /PATH_to/the/pdt-ocr-converter.sh
		exit 0	
	fi
}

echo -e "\033[1mUsage\033[0m: Enter the file name and the number of pages. \n\e[2mIf you want to cancel type \e[4mCtrl+C\e[24m at any moment\e[22m\n"

select_file


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

#Modifications: I've changed the output name.
pdftk tmp.pdf_*.pdf output "$PDF"_ocr.pdf  && rm -f tmp.pdf_*.pdf
echo -e "\n\033[1m\e[32mOutput written succesfully\e[0m\033[0m\n"
 
