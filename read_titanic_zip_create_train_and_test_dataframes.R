## main file: read_titanic_zip_create_train_and_test_dataframes.R
##
## Assumes: "data/titanic.zip"  was downloaded from Kaggle using the command line API
## $ kaggle competitions download -c titanic
## and the zip file was moved to the folder "data/" aunder the project root folder


source('extract_from_zip_file_and_backup_as_rds.R')
source("read_train_and_test_from_disk.R")

# library(rattle)


# rattle()
