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




