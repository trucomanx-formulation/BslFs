#!/bin/bash

latex freq1.tex
dvips -E -o freq1.eps freq1.dvi

rm -f freq1.aux  
rm -f freq1.log  
rm -f freq1.dvi  

