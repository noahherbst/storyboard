#=====================================================================#
# This is code to create:
# Authored by and feedback to:
# MIT License
# Version:
#=====================================================================#

library(tidyverse)
library(googlesheets4)
# 
# googlesheets4::gs4_auth()
# bookban_raw <- googlesheets4::range_read(
#     ss = "https://docs.google.com/spreadsheets/d/1hTs_PB7KuTMBtNMESFEGuK-0abzhNxVv4tgpI5-iKe8/edit?usp=sharing" ,
#     sheet =  "Sorted by State & District",
#     range = "Sorted by State & District!A3:J2535")
glimpse(bookban_raw)

readr::write_csv(x = bookban_raw, "data/raw/bookban_raw.csv")
bookban_raw <- readr::read_csv("data/raw/bookban_raw.csv")