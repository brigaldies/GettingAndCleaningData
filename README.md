# README
 
## Instructions to run the analysis

This README file provides the instructions to reproduce the analysis in your 
local environment.

### Environment
 
The analysis' R code was developed and tested in the following runtime environment:

Component | Version
--------- | -------
Operating System | Windows 7 Enterprise, Service Pack 1
R | R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet", x86_64-w64-mingw32/x64 (64-bit)
R Studio | Version 0.98.1091
R package data.table | 1.9.4
R package dplyr | 0.4.1

The R code was successfully tested in both R Studio and the R Console.

### Raw Data

1. Download the raw data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip the downloaded file to any directory of your choice. Your selected directory is referred to as the *raw data installation directory*, or simply the *data directory* in the instructions that follow.

### R Console Setup

If you will be running the analysis in the **R Console**, configure R Console as follows:

1. '--internet2' option

To allow sourcing of an R file from an HTTPS URL, such as a GitHub URL, the R Console must
be run with the '--internet2' command-line option.

For Windows users, one way to do this is to create a new shortcut on the Desktop and add 
the '--internet2' option at the end of the Target as shown below using the author's configuration
as an example:

Target: "C:\\Program Files\\R\\R-3.1.2\\bin\\x64\\Rgui.exe" --internet2

2. Buffered Output

To watch the analysis' progress messages during the execution, turn off the output buffering
in Misc/Buffered Output.

### Analysis Execution Instructions

From R Studio or the R Console:

1. Source the analysis' R code that will process the raw data.
```r
source('source('https://raw.githubusercontent.com/brigaldies/GettingAndCleaningData/master/run_analysis.R')')
```

2. Run the analysis by executing the `run_analysis` R function as shown below.
```r
# The author's data directory below is for illustration only.
data_directory <- 'C:\\training\\coursera\\datascience\\GettingAndCleaningData\\project\\UCI HAR Dataset'
run_analysis(
   directory = data_directory,
   destinationFile = './analysis.txt')
```

The function's arguments are explained below:

1. The first argument, `directory =`, is the *data directory* where you unzipped the raw data.
2. The second argument, `destinationFile = `, is the file the analysis writes the results to.
3. The function supports the following additional and optional arguments:
    1. `debug = TRUE (or FALSE, by default)`, to set the debug mode. In debug mode, the function 
    executes the `View()` function on the different intermediate data structures.
    2. Any of the optional arguments in `write.table` that configures the output, for example, `sep = ","`
    to set the separator to the comma, or `quote = FALSE` to not have the double quotes around strings.
