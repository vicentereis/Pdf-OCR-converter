# pdf-ocr-converter
This is a bash scritpt based on the scritp wrote by Akom's Tech Ruminations at http://tech.akom.net/archives/126-OCR-on-a-large-PDF-using-tesseract-and-pdftk.html

From the original script I've added an textual interface to get the file and number of pages, doing so it became more flexible to use.

Information copied from the original post:

This script takes the input PDF and:

    splits it into pages
    converts each page to a TIFF format that tesseract can actually handle, removing alpha channels, etc
    performs OCR
    outputs each individual page as PDF
    reassembles the PDF
    Deletes the temp fies
    
Prerequisites:

    tesseract
    imagemagick
    pdftk

To install prerequisites 

**Tesseract** (https://github.com/tesseract-ocr/)

_sudo apt install tesseract-ocr_

_sudo apt install libtesseract-dev_


**Imagemagick** (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)

_sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev_

_sudo apt-get install imagemagick_


**Pdftk** (https://www.imagemagick.org/script/index.php)

_sudo apt-get install pdftk_


---------------------------------------------------------------------------------------
| **LEIA-ME - PORTUGUÊS**                                                              |
----------------------------------------------------------------------------------------



Esse script é baseado no script originalmente escrito por by Akom's Tech Ruminations at http://tech.akom.net/archives/126-OCR-on-a-large-PDF-using-tesseract-and-pdftk.html

A partir do script original eu adicionei uma interface textual para inserir o nome do arquivo e o número de páginas, assim se torna mais flexível para o uso. 
    
Esse programa utiliza três programas e faz a seguinte operação:

    separa seu pdf em múltiplas páginas
    converte cada página para o formato TIFF  que o tesseract consegue ler, removendo canal alpha, etc.
    roda o OCR
    transforma cada página em um arquivo PDF
    reune os arquivos PDF em um só
    Deleta os arquivos temporários

Pré requisitos:

    tesseract
    imagemagick
    pdftk

Para instalar os pré requisitos:

**Tesseract** (https://github.com/tesseract-ocr/)

_sudo apt install tesseract-ocr_

_sudo apt install libtesseract-dev_


**Imagemagick** (https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)

_sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev libmagic-dev_

_sudo apt-get install imagemagick_


**Pdftk** (https://www.imagemagick.org/script/index.php)

_sudo apt-get install pdftk_
