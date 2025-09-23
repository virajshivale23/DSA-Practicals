# Load necessary libraries
library(readr)    # For reading CSV and text files
library(readxl)   # For reading Excel files

# Load a CSV file
facebook_df <- read_csv("dataset_Facebook.csv")

# Load an Excel file
lungcap_df <- read_excel("LungCap_Dataset.xls")

# Load a comma-separated text file
text_df <- read_delim("your_text_file.txt", delim = ",")