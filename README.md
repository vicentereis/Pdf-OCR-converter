# pdf-ocr-converter
This is a bash scritpt based on the scritp wrote by Akom's Tech Ruminations at http://tech.akom.net/archives/126-OCR-on-a-large-PDF-using-tesseract-and-pdftk.html

From the original script I've added an user input to get the file and number of pages, doing so it became more flexible to use.

This script takes the input PDF and:

    splits it into pages
    converts each page to a TIFF format that tesseract can actually handle, removing alpha channels, etc
    performs OCR
    outputs each individual page as PDF
    reassembles the PDF
