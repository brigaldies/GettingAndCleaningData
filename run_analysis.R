# ------------------------------------------------------------------------------
# Function: run_analysis
# 
# Arguments:
# directory      : Directory where the data set resides.
# destinationFile: The file to write the analysis results to.
# debug          : Boolean (default is FALSE) to specify the debug mode.
# ...            : Additional arguments are passed to write.table() to configure
#                  the output (e.g., separator).
# 
# The function performs the following:
# 
# (Steps 1 through 5 are performed by the createTidyData function)
# 
# 1. Loads, tidies, and merges the training and the test sets to create a
#    single tidy data set.
# 
# 2. Extracts only the measurements on the mean and standard deviation for 
#    each measurement.
# 
# 3. Column-bind the measurements (X), activities (Y), and subjects.
# 
# 4. Sets descriptive activity names for the activities in the data.
# 
# 5. Labels the data set with descriptive variable names. 
#
# 6. Group the tidy data by activity label, and subject number.
# 
# 7. Summarize the data by calculating the mean for every measurement.
#
# Notes:
# 1. To assist with troubleshooting, the function calls View() on a number of
#    intermediate data structures. Turn on this feature by passing debug = TRUE.
#
# 2. When running in the R console (Not R Studio), turn off output buffering in
#    Misc/Output Buffering if you would like to see the progress messages during
#    execution.
#
# 3. The reading of the X measurements with read.table is a bit slow. The faster
#    fread() alternative does not work as fread() does not separate columns
#    consistently in the "X_" files. Evidently, the presence of two or more spaces
#    between columns causes fread() to report an 'na' column value between each
#    space, while read.table() happily consumes all spaces between values.
# ------------------------------------------------------------------------------
run_analysis <- function(directory, destinationFile, debug = FALSE, ...) {
    execTime <- system.time({
        message("Create tidy data for the 'train' dataset...")
        train <- createTidyData(directory, 'train', debug)
        if (debug) View(train)
        message("Create tidy data for the 'test' dataset...")
        test <- createTidyData(directory, 'test', debug)
        if (debug) View(test)
        message("Merging 'train' and 'test', grouping by activity, and calculating the means")
        analysis <- 
            bind_rows(train, test) %>%
            group_by(activity_label, subject_number) %>%
            summarise_each(funs(mean))
        if (debug) View(analysis)
        message(paste('Writing the analysis results to', destinationFile))
        write.table(analysis, destinationFile, ...)
    }
    )
    if (debug) print(execTime)
    analysis
}

# ------------------------------------------------------------------------------
# Function: createTidyData
# 
# Arguments:
# directory  : Directory where the data set resides.
# datasetName: The data set name ('train', 'test', etc.) to read.
# debug      : Boolean (default is FALSE) to specify the debug mode.
# 
# The function performs the following:
# 1. Checks that the directory and the data set's files exist. Stops if
#    something is amiss.
# 
# 2. Reads (fread) the feature labels file into a table, and selects the 
#    features corresponding to mean and standard deviation measurements only.
# 
# 3. With the data in step #2, the function contructs two vectors of strings:
#    a. The 'V<num>' default column names that read.table() in step #4 returns.
#    b. The "cleaned" feature names, with the characters '(', ')', and '-' 
#       removed.
# 
# 4. Reads (read.table) the 'X' measurements into a table.
# 
# 5. a. Using the vector produced in step #3.a, the function selects the
#       mean and std measurements only.
#    b. Using the vector produced in step #3.b, The function set the column
#       names using the "cleaned" feature names.
#
# 6. Reads (fread) the Y data into a table, and set the column name to
#    activity_number.
# 
# 7. Reads (fread) the activity labels file into a table, and set the 
#    column names to activity_number and activity_label.
# 
# 8. Adds the activity label to the Y table by inner-joining with the activity
#    labels table obtained in step #7 on activity_number.
#
# 9. Reads (fread) the subject data into a table, and set the column name
#    to subject_number.
#
# 10. Column-binds (bind_cols) Subject, Y, and X, and returns the result.
# ------------------------------------------------------------------------------
createTidyData <- function(directory, datasetName, debug = FALSE) {
    
    # Specity and load if necessary the required libraries.
    require(data.table)
    require(dplyr)
    
    # 1. Check the function's argument as well as the data files.
    message(paste('Working directory: ', directory))
    
    if (!file.exists(directory)) {
        stop(paste('The directory', paste("'", directory, "'", sep=''), 'does not exist!'))
    }
    
    # Construct the names of the various data files that will be loaded.
    features_file <- paste(directory, '/features.txt', sep='')
    activity_labels_file <- paste(directory, '/activity_labels.txt', sep='')
    x_data_file <- paste(directory, '/', datasetName, '/X_', datasetName, '.txt', sep='')
    y_data_file <- paste(directory, '/', datasetName, '/y_', datasetName, '.txt', sep='')
    subject_data_file <- paste(directory, '/', datasetName, '/subject_', datasetName, '.txt', sep='')    
        
    message(paste('Features file:', features_file))
    message(paste('X data file:', x_data_file))
    message(paste('Y data file:', y_data_file))
    message(paste('Subject data file:', subject_data_file))
    
    # Construct a vector of the data file names.
    files <- c(features_file, 
               activity_labels_file, 
               x_data_file, 
               y_data_file, 
               subject_data_file)
    
    for (file in files) {
        if (!file.exists(file)) {
            stop(paste('Data file', paste("'", file, "'", sep=''), 'does not exist!'))
        }            
    }
    
    # 2. Load the feature labels.
    featuresdt <- fread(features_file)
    message('Feature labels loaded.')
    # Set the column names.
    setnames(featuresdt, c('number', 'label'))
    # Convert into a dplyr for more convenient processing.
    features <- tbl_df(featuresdt)
    rm(featuresdt) # cleanup    
    # select the features of interest: mean and std
    f1 <- filter(features, grepl('mean\\(|std\\(', label))
    rm(features) # cleanup
    
    # 3. Create (mutate) the following additional columns to store the variable 
    # names we'll use when selecting data out of the 'train' and 'test' tables:
    # vlabel: The 'V<number>' column name to select the variables of interest in the data.
    # feature: The descriptive column name to replace the V<number> column with.
    f2 <- mutate(f1, 
                 vlabel = paste('V', number, sep=''), # V<number>
                 feature = gsub('[()-]', '', label)) # Feature name without (,), and -
    rm(f1) # Cleanup
    if (debug) View(f2)
        
    # 4. Read the X data.    
    message(paste('Reading X data in', x_data_file, '...'))
    execTime <- system.time(x_dt <- read.table(x_data_file))
    if (debug) print(execTime)
    message(paste('Reading', x_data_file, 'done.'))
    if (debug) {
        message('X data dimensions:')
        print(dim(x_dt))
    }    
    # Convert the data into a dplyr table for more convenient processing.
    x <- tbl_df(x_dt)
    rm(x_dt) # cleanup
    
    # 5. Select and rename the variables of interest.
    message('Select the variables of interest')
    if (debug) print(f2$vlabel)
    x <- select(x, one_of(f2$vlabel))
    message('Renaming the variables to descriptive names')
    if (debug) print(f2$feature)
    setnames(x, f2$feature)
    if (debug) View(x)
    
    # 6. Read the Y data.
    message(paste('Reading Y data in', y_data_file, '...'))
    y_dt <- fread(y_data_file)
    message(paste('Reading', y_data_file, 'done.'))
    setnames(y_dt, c('activity_number'))
    y <- tbl_df(y_dt)
    rm(y_dt)
    
    # 7. Read the activity labels.
    activity_labels <- fread(activity_labels_file)
    message('Activity labels loaded.')
    setnames(activity_labels, c('activity_number', 'activity_label'))
    activity_labels <- tbl_df(activity_labels)
    
    # 8. Add the label column to y_train: Inner join on activity_number
    y <- 
        y %>% 
        inner_join(activity_labels, by='activity_number') %>%
        select(-activity_number) # Remove the activity number.
    if (debug) View(y)
    
    # 9. Read the subject data
    subject_dt <- fread(subject_data_file)
    setNames(subject_dt, c('subject_number'))
    subject <- tbl_df(subject_dt)
    rm(subject_dt)
    
    # 10. Column-Bind x, y, and subject
    message('Binding X, Y, and Subjects')
    x <- bind_cols(subject, y, x) 
        
    # Return the final tidy data set.
    x
}