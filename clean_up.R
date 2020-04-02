

## remove records with any NAs
titanic_train_clean <- titanic_train[complete.cases(titanic_train), ]
dim(titanic_train_clean)

titanic_test_clean <- titanic_test[complete.cases(titanic_test), ]
dim(titanic_test_clean)
