#!/bin/bash

latex freq1norm.tex
dvips -E -o freq1norm.eps freq1norm.dvi

rm -f freq1norm.aux  
rm -f freq1norm.log  
rm -f freq1norm.dvi  

