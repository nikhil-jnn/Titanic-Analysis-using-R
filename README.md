![A picture containing boat, ship, outdoor, watercraft Description automatically
generated](media/ab7195af5da6db0e62c652704aad54ef.jpg)

|   |
|---|

**Table of Contents**

| [1](#1fob9te) | [Project Objective .............................................................................................................................](#1fob9te)    | [3](#1fob9te)                                                                                                                                      |               |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| [2](#1fob9te) | [Assumptions ....................................................................................................................................](#1fob9te)   | [3](#1fob9te)                                                                                                                                      |               |
| [3](#1fob9te) | [Exploratory Data Analysis – Step by step approach .......................................................................](#1fob9te)                          | [3](#1fob9te)                                                                                                                                      |               |
|               | [3.1](#1fob9te)                                                                                                                                                | [Environment Set up and Data Import .....................................................................................](#1fob9te)               | [3](#1fob9te) |
|               | [3.1.1](#1fob9te)                                                                                                                                              | [Install necessary Packages and Invoke Libraries .............................................................](#1fob9te)                          | [3](#1fob9te) |
|               | [3.1.2](#1fob9te)                                                                                                                                              | [Set up working Directory ................................................................................................](#1fob9te)              | [3](#1fob9te) |
|               | [3.1.3](#3znysh7)                                                                                                                                              | [Import and Read the Dataset ..........................................................................................](#3znysh7)                 | [4](#3znysh7) |
|               | [3.2](#3znysh7)                                                                                                                                                | [Variable Identification .............................................................................................................](#3znysh7)  | [4](#3znysh7) |
|               | [3.2.1](#3znysh7)                                                                                                                                              | [Variable Identification – Inferences ................................................................................](#3znysh7)                  | [4](#3znysh7) |
|               | [3.3](#3znysh7)                                                                                                                                                | [Univariate Analysis ..................................................................................................................](#3znysh7) | [4](#3znysh7) |
|               | [3.4](#2et92p0)                                                                                                                                                | [Bi-Variate Analysis...................................................................................................................](#2et92p0) | [5](#2et92p0) |
|               | [3.5](#2et92p0)                                                                                                                                                | [Missing Value Identification ....................................................................................................](#2et92p0)      | [5](#2et92p0) |
|               | [3.6](#2et92p0)                                                                                                                                                | [Outlier Identification ...............................................................................................................](#2et92p0) | [5](#2et92p0) |
|               | [3.7](#2et92p0)                                                                                                                                                | [Variable Transformation / Feature Creation ..........................................................................](#2et92p0)                  | [5](#2et92p0) |
| [4](#2et92p0) | [Conclusion .......................................................................................................................................](#2et92p0) | [5](#2et92p0)                                                                                                                                      |               |
| [5](#2et92p0) | [Appendix A – Source Code ..............................................................................................................](#2et92p0)            | [5](#2et92p0)                                                                                                                                      |               |

# Introduction

|  The RMS Titanic sank in the early morning hours of 15 April 1912 in the North Atlantic Ocean, four days into her maiden voyage from Southampton to New York City.  Titanic had an estimated 2,224 people on board when she struck an iceberg at around 23:40 (ship's time) on Sunday, 14 April 1912.Her sinking two hours and forty minutes later at 02:20 (ship's time; 05:18 GMT) on Monday, 15 April, resulted in the deaths of more than 1,500 people, making it one of the deadliest peacetime maritime disasters in history.  |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|               *Data Source: https://www.kaggle.com/hesh97/titanicdataset-traincsv*                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

**  
**

**1.** **Project Objective**

The sinking of the Titanic is one of the most infamous shipwrecks in history. On
April 15, 1912, during her maiden voyage, the widely considered “unsinkable” RMS
Titanic sank after colliding with an iceberg.   

Unfortunately, there weren’t enough lifeboats for everyone on board, resulting
in the death of 1502 out of 2224 passengers and crew. While there was some
element of luck involved in surviving, it seems some groups of people were more
likely to survive than others. The objective of the project involves answering
the question “what sorts of people were more likely to survive?” using passenger
data (ie name, age, gender, socio-economic class, etc).

The Project is about Exploratory Data Analysis (EDA) with the help of R Language
or R Studios as a Tool to identify the answers.

**2. Assumptions**

*\<Think from practical Project Execution perspective. Add all your assumptions
here.\>*

**3. Exploratory Data Analysis**

3.1 Environment Set up and Data Import

3.1.1 Install necessary Packages and Invoke Libraries

In R-Studios, the following libraries are used to explore the data.

| **Library** | **What it is used for?**                                                                                                                                                                   |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| lattice     | It attempts to improve on base R graphics by providing better defaults and the ability to easily display multivariate relationships.                                                       |
| e1071       | It provides functions for statistic and probabilistic algorithms like a fuzzy classifier, naive Bayes classifier, etc. Functions such as skewness and kurtosis are used from this library. |
| ggplot2     | It is used for statistical computing and data representation using data visualization. Histogram, Distribution charts are made with the help of this.                                      |
| esquisse    | Esquisse package helps to explore and visualize your data interactively. It is a Shiny gadget to create ggplot charts interactively with drag-and-drop to map your variables               |

3.1.2 Set up working Directory

Setting a working directory at starting of the R session makes importing and
exporting data files and code files easier. Basically, working directory is the
location/ folder on the PC where you have the data, codes etc. related to the
project.

The working directory in this project is -   
setwd("E:/Welingkar Tri 2/R_We/R/WE_ASN_WD")

Please refer to Appendix A for Source Code.

3.1.3 Import and Read the Dataset

The given dataset is in .csv format with the name “train.csv”. Hence, the
command ‘read.csv’ is used for importing the file.

A variable “df” is created to read all the data in this variable. df variable
will be used in the complete project to call the dataset.

df = read.csv("train.csv")

Please refer Appendix A for Source Code.

## 3.2 Variable Identification

3.2.1 Variable Identification

Defining the variables what does it mean. Defining the data type of each
variable from the output of R function str(df). Classifying the type of the
variable being continuous, discrete, dependent, and independent. Key represents
the notation of numeric values of variables data of 0,1,2,3. The representation
of such values in the literal meaning.

| **Variable** | **Definition**                            | **Variable Identification** | **Data Type** | **Key**                 |
|--------------|-------------------------------------------|-----------------------------|---------------|-------------------------|
| survival     | Survival                                  | Dependent, Discrete         | int           | 0 = No 1 = Yes          |
| pclass       | Ticket class                              | Independent, Discrete       | int           | 1 = 1st 2 = 2nd 3 = 3rd |
| sex          | Sex                                       | Independent, Discrete       | Chr           |                         |
| Age          | Age in years                              | Independent, Continuous     | int           |                         |
| sibsp        | \# of siblings/spouses aboard the Titanic | Independent, Discrete       | int           |                         |
| parch        | \# of parents/children aboard the Titanic | Independent, Discrete       | int           |                         |
| ticket       | Ticket number                             | Independent, Discrete       | Chr           |                         |
| fare         | Passenger fare                            | Independent, Continuous     | num           |                         |
| cabin        | Cabin number                              | Independent, Discrete       | Chr           |                         |

chr = character  
int = integer  
num = number

List of functions used to explore the data for a better understanding of the
data. The output obtained and the inference of such output.

| Function Name                             | Output                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Inference                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| View(df)                                  | Display the dataset in table format in a new window.                                                                                                                                                                                                                                                                                                                                                                                                                                   | Helps in viewing the data in a smooth table format.                                                                                                                                                                                                                                                                                                                                                                                                 |
| dim(df)                                   | 891 11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | There are 891 observations and 11 variables in the dataset.                                                                                                                                                                                                                                                                                                                                                                                         |
| head(df)                                  | Display the top 5 rows with all columns.                                                                                                                                                                                                                                                                                                                                                                                                                                               | Helps to quick overview the data.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| tail(df)                                  | Display the bottom 5 rows with all columns.                                                                                                                                                                                                                                                                                                                                                                                                                                            | Helps to quick overview the data from last.                                                                                                                                                                                                                                                                                                                                                                                                         |
| str(df)                                   | data.frame': 891 obs. of 11 variables:   \$ PassengerId: int 1 2 3 4 5 6 7 8 9 10 ...  \$ Survived : int 0 1 1 1 0 0 0 0 1 1 ...  \$ Pclass : int 3 1 3 1 3 3 1 3 3 2 ...  \$ Name : chr "...  \$ Sex : chr "male" "female" "female"  \$ Age : num 22 38 26 35 35 NA 54 2  \$ SibSp : int 1 1 0 1 0 0 0 3 0 1 ...  \$ Parch : int 0 0 0 0 0 0 0 1 2 0 ...  \$ Ticket : chr "A/5 21171" "PC 17599"  \$ Fare : num 7.25 71.28 7.92 53.1 8.05 ...  \$ Cabin : chr "" "C85" "" "C123" ...  | We can understand the structure of the data with this function.  We can understand the data types of each variable.  We can understand that what type of graphical representation we can perform by using which variable to better understand the data. For example: Survived is int and Sex is chr, so we can plot a bar graph by count.                                                                                                           |
| names(df)                                 | "PassengerId" "Survived" "Pclass" "Name" "Sex" "Age" "SibSp" "Parch" "Ticket" "Fare" "Cabin"                                                                                                                                                                                                                                                                                                                                                                                           | We can see all the names of all the variables. It helps in understanding all the variables present in the dataset at a glance. It helps to quickly refer to names while writing the code.                                                                                                                                                                                                                                                           |
| summary(Fare)  summary(Age)  summary(Sex) | \> summary(Fare)  Min. 1st Qu. Median Mean 3rd Qu. Max.   0.00 7.91 14.45 32.20 31.00 512.33   \> summary(Age)  Min. 1st Qu. Median Mean 3rd Qu. Max. NA's   0.42 20.12 28.00 29.70 38.00 80.00 177   \> summary(Sex)  Length Class Mode   891 character character                                                                                                                                                                                                                     | Summary function provides the 5 Point summary of quantitative variable along with some other insights too.  Summary of fare helps us to understand that mean is 32.20 while median is 14.45, which means there should be outliers in the fare. The range is 512.33 - 0 = 512, which means the data is very skewed.   Summary of Age provides the insights that the data is centered between somewhat 30 Age. There are 177 NA’s in the Age column.  |

**3.3** **Uni-variate Analysis**

**3.4** **Bi-Variate Analysis**

*\<To explore relationship between two variables \>*

*\<Interpret the findings\>*

**3.5** **Missing Value Identification**

*\<See if any missing values / Outliers?\>*

**3.6** **Outlier Identification**

**3.7** **Variable Transformation / Feature Creation**

*\<Do you see a need of transforming a variable / creating new variables for
better understanding of the data, or presenting the results to the customer?\>*

*\<Act accordingly\>*

**4** **Conclusion**

*\<Very important section of the report, often ignored, or just produced
technical details.*

*Always keep in mind that the Sr. Management / Customer is going to read this
section, so it has to be in business language.*

*You may provide the conclusion for each attribute in brief.\>*

**5** **Appendix A**

*\#======================================================================= \#*
