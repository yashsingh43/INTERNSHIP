#Author: Yash S., Date: 8/8/2023, Purpose: R practice

#calculate sum of 2 numbers: 10, 15
10+15
#calculate division of 2 numbers: 1000, 10
1000/10
#calculate subtraction of 2 numbers: 700000000, 7
7000000000-7
#calculate multiplication of 2 numbers: 191919, 8
191919*8

#Read the Affymetrix data in R
library(affy)

#Set the working directory
setwd("/Users/yashsingh/Documents/Research Course/Data/TRIAL_GSE344_RAW")

#Read the data
data <- ReadAffy()

#Visualize read dataset
boxplot(data)
#save as pdf

#Pre-processing dataset: Normalization of data using RMA
data_normalized <- rma(data)
#head(variable) gives first few information about data

#Creating a table with sample and expression values
expression_values <- exprs(data_normalized)
#head(expression_values) to get table
#tail(expression_values) to get last few lines
#dim(expression_values) for dimension. First number is # of rows and second number is # of columns, which is # of samples in this case
#The numbers in the table is the intensity of the fluoresence. The higher the number, the more the expression of the gene. High number would be 1500+.

#Create a box plot of normalized expression data
boxplot(expression_values)


