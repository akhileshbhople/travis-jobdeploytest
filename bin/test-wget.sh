#!/bin/bash

echo "Test Wget command on PPC64LE VMs"
echo downloading test file:; wget -O phototest.tif https://github.com/tesseract-ocr/test/raw/master/testing/phototest.tif
ls -l 
