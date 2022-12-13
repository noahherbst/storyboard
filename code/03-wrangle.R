#=====================================================================#
# This is code to create:
# Authored by and feedback to:
# MIT License
# Version:
#=====================================================================#
library(tidyverse)
# install.packages("janitor")
library(janitor)
source("code/01-import.R")
glimpse(bookban_raw)
bookban <- janitor::clean_names(bookban_raw)
glimpse(bookban)
write_csv(bookban, "data/bookban.csv")
bookban <- readr::read_csv("data/bookban.csv")
