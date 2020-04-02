create_files <- function (fname,...) {
    try(expr = read.csv(unzip(zipfile = ..., files = c(fname))),silent = TRUE);
}

extract_file_names <- function (names) {
    setNames((unlist(strsplit(apply(names, MARGIN = c(1), function(r) r[1]), " "))), NULL)
}


create_df_from_zip_file <- function(file_name) {
    if(file.exists(file_name)) {
        files_from_kaggle <- unzip(file_name, list = TRUE)
        names <- extract_file_names(files_from_kaggle)
        # print(paste0("Found the following files in ", file_name))
        print(names)
        # print(file_name)
        dfs <- lapply(names, create_files, file_name)
        dfs
    }
}


# create a list of three data frames with the Kaggle data for the Titanic data analysis project
dfs <- create_df_from_zip_file("data/titanic.zip")

if (dim(dfs[[1]])[2] == 2) {
    saveRDS(object = dfs[[3]], file = "data/sample_submission.rds")  
}
if (dim(dfs[[2]])[2] == 11) {
    saveRDS(object = dfs[[2]], file = "data/test.rds")
}
if (dim(dfs[[3]])[2] == 12) {
    saveRDS(object = dfs[[3]], file = "data/train.rds")
}

rm(dfs)
rm('create_files')
rm('extract_file_names')
rm('create_df_from_zip_file')

