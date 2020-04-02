
## Assumes the data has been saved to file already

if (file.exists("data/train.rds")){
    titanic_train <- readRDS("data/train.rds")
}

if (file.exists("data/test.rds")){
    titanic_test <- readRDS("data/test.rds")
}
