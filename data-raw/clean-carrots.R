############################################################
#                                                          #
#                   Process carrots data                   #
#                                                          #
############################################################

# The 'raw' data were sourced from the carrots dataset in the lmerTest package.

# Load data wrangling packages
library(dplyr)
library(forcats)
library(stringr)

# Read file
carrots <- read.csv(file = 'data-raw/carrots.csv')

# Quick look
glimpse(carrots)

# Process data
carrots <- carrots %>%
    # Convert into a tibble
    tbl_df() %>%
    # Filter out *_L products (to reduce product to one per manufacturer)
    filter(!str_detect(string = product,
                       pattern = '_L')) %>%
    # Remove '_E' suffix from remaining products
    mutate(product = str_replace(string = product,
                                 pattern = '_E$',
                                 replacement = '')) %>%
    # Select columns
    select(product, Consumer, Frequency,
           Gender, Age, Work, Income,
           Preference, Sweetness,
           BITTER, Crisp) %>%
    # Rename columns
    rename(Product = product,
           Sex = Gender,
           Age_group = Age,
           Employment_status = Work,
           Income_group = Income,
           Bitterness = BITTER,
           Crispness = Crisp) %>%
    # Recode data
    mutate(Product = factor(Product)) %>%
    mutate(Frequency = factor(Frequency,
                              ordered = TRUE),
           Frequency = fct_recode(Frequency,
                                  'Once a week or more' = '1',
                                  'Once every two weeks' = '2',
                                  'Once every three weeks' = '3',
                                  'At least once a month' = '4',
                                  'Less than once a month' = '5')) %>%
    mutate(Sex = factor(Sex),
           Sex = fct_recode(Sex,
                            'Male' = '1',
                            'Female' = '2')) %>%
    mutate(Age_group = factor(Age_group,
                              ordered = TRUE),
           Age_group = fct_recode(Age_group,
                                  '< 25 years' = '1',
                                  '26-40 years' = '2',
                                  '41-60 years' = '3',
                                  '> 61 years' = '4')) %>%
    mutate(Employment_status = factor(Employment_status,
                                      ordered = TRUE),
           Employment_status = fct_recode(Employment_status,
                                          'Unskilled labourer' = '1',
                                          'Skilled labourer' = '2',
                                          'Office worker' = '3',
                                          'Housewife/husband' = '4',
                                          'Self-employed' = '5',
                                          'Student' = '6',
                                          'Retired' = '7')) %>%
    mutate(Income_group = factor(Income_group,
                                 ordered = TRUE),
           Income_group = fct_recode(Income_group,
                                     'Low-income' = '1',
                                     'Lower middle-income' = '2',
                                     'Upper middle-income' = '3',
                                     'Upper-income' = '4')) %>%
    mutate(Bitterness = as.integer(as.character(Bitterness)))

# Write to file
devtools::use_data(carrots,
                   overwrite = TRUE)
