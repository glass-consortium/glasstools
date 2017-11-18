#!/bin/bash

## startup env to load at the end
## see order of loading env at http://singularity.lbl.gov/docs-environment-metadata

## include user defined executables in docker container PATH
mypathmunge /mnt/glasscore/configs/bin

## allow user to install additional R packages at mounted space
export R_LIBS_USER=/mnt/glasscore/configs/extapps/Rpkgs

## silent loading, uncomment for debugging
# echo -e "\n######\nINFO:\nloaded user env from mounted disk volume\nPATH is: ${PATH}\n######\n"

## END ##
