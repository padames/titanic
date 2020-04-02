## main file: read_titanic_zip_create_train_and_test_dataframes.R
##
## Assumes: "data/titanic.zip"  was downloaded from Kaggle using the command line API
## $ kaggle competitions download -c titanic
## and the zip file was moved to the folder "data/" aunder the project root folder


source('create_df_from_zip_file.R')
source("read_train_and_test_from_disk.R")

library(rattle)


rattle()
