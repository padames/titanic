
## Assumes the data has been saved to file already

if (file.exists("data/train.rds")){
    titanic_train <- readRDS("data/train.rds")
}

if (file.exists("data/test.rds")){
    titanic_test <- readRDS("data/test.rds")
}

# do a little clean up

# removing empty record
# titanic_train <- titanic_train[-c(596),]
