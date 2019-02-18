#!/bin/bash

docker run -d -it --name test_wget ubuntu:16.04
docker exec -it test_wget /bin/bash -c "apt-get update; apt-get install wget -y; wget -O phototest.tif https://github.com/tesseract-ocr/test/raw/master/testing/phototest.tif; ls"

