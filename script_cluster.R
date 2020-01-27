library(pacman)
p_load(Gmedian, tidyverse)

source("src/clustering.R")

args <- commandArgs(trailingOnly = TRUE)

if(length(args) < 2){
  print("Usage: Rscript script.R 'input.csv' 'output.csv'")
}

clustering(args[1], args[2])

  
