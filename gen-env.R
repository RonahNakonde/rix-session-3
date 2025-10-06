library(rix)

rix(
  date = "2025-09-16",
  r_pkgs = c(
    "languageserver", # if you want to use VS Code
    "testthat",
    "tidyverse" # or whatever package
  ),
  py_conf = list(
    py_version = "3.13",
    py_pkgs = c("polars", "great-tables")
  ),
  ide = "none",
  project_path = ".",
  overwrite = TRUE,
  print = TRUE
)

