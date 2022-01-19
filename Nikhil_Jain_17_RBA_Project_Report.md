![A picture containing boat, ship, outdoor, watercraft Description automatically
generated](media/ab7195af5da6db0e62c652704aad54ef.jpg)

|   |
|---|

Table of Contents

| [0](#1fob9te) | Introduction                           | [3](#1fob9te)                                               |                |
|---------------|----------------------------------------|-------------------------------------------------------------|----------------|
| [1](#1fob9te) | Project Objective                      | [4](#1fob9te)                                               |                |
| 2             | Assumptions                            | 4                                                           |                |
| [3](#1fob9te) | [Exploratory Data Analysis](#1fob9te)  | [4](#1fob9te)                                               |                |
|               | [3.1](#1fob9te)                        | [Environment Set up and Data Import](#1fob9te)              | [4](#1fob9te)  |
|               |  [3.1.1](#1fob9te)                     | [Install necessary Packages and Invoke Libraries](#1fob9te) | [4](#1fob9te)  |
|               | [3.1.2](#1fob9te)                      | [Set up working Directory](#1fob9te)                        | [5](#1fob9te)  |
|               | [3.1.3](#3znysh7)                      | [Import and Read the Dataset](#3znysh7)                     | [5](#3znysh7)  |
|               | [3.2](#3znysh7)                        | [Variable Identification](#3znysh7)                         | [6](#3znysh7)  |
|               | [3.2.1](#3znysh7)                      | [Variable Identification – Inferences](#3znysh7)            | [6](#3znysh7)  |
|               | [3.2.2](#3znysh7)                      | Summary Functions                                           | 7              |
|               | [3.3](#3znysh7)                        | [Univariate Analysis](#3znysh7)                             | [8](#3znysh7)  |
|               | [3.4](#2et92p0)                        | [Bi-Variate Analysis](#2et92p0)                             | [11](#2et92p0) |
|               | [3.5](#2et92p0)                        | Multi Variate Analysis                                      | 13             |
|               | [3.6](#2et92p0)                        | [Missing Value Identification](#2et92p0)                    | [14](#2et92p0) |
|               | [3.7](#2et92p0)                        | [Outlier Identification](#2et92p0)                          | [15](#2et92p0) |
| [4](#2et92p0) | [Conclusion](#2et92p0)                 | [16](#2et92p0)                                              |                |
| [5](#2et92p0) | [Appendix A – Source Code](#2et92p0)   | [17](#2et92p0)                                              |                |

# Introduction

|  The RMS Titanic sank in the early morning hours of 15 April 1912 in the North Atlantic Ocean, four days into her maiden voyage from Southampton to New York City.  Titanic had an estimated 2,224 people on board when she struck an iceberg at around 23:40 (ship's time) on Sunday, 14 April 1912.Her sinking two hours and forty minutes later at 02:20 (ship's time; 05:18 GMT) on Monday, 15 April, resulted in the deaths of more than 1,500 people, making it one of the deadliest peacetime maritime disasters in history.  |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
|            *Data Source: https://www.kaggle.com/hesh97/titanicdataset-traincsv*                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

1\. Project Objective

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

2\. Assumptions

It has been assumed that the fare is in \$.

3\. Exploratory Data Analysis

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

3.2 Variable Identification

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

3.2.2 Summary Functions

List of functions used to explore the data for a better understanding of the
data. The output obtained and the inference of such output.

| Function Name                             | Output                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Inference                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| View(df)                                  | Display the dataset in table format in a new window.                                                                                                                                                                                                                                                                                                                                                                                                                                   | Helps in viewing the data in a smooth table format.                                                                                                                                                                                                                                                                                                                                                                                                |
| dim(df)                                   | 891 11                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | There are 891 observations and 11 variables in the dataset.                                                                                                                                                                                                                                                                                                                                                                                        |
| head(df)                                  | Display the top 5 rows with all columns.                                                                                                                                                                                                                                                                                                                                                                                                                                               | Helps to quick overview the data.                                                                                                                                                                                                                                                                                                                                                                                                                  |
| tail(df)                                  | Display the bottom 5 rows with all columns.                                                                                                                                                                                                                                                                                                                                                                                                                                            | Helps to quick overview the data from last.                                                                                                                                                                                                                                                                                                                                                                                                        |
| str(df)                                   | data.frame': 891 obs. of 11 variables:   \$ PassengerId: int 1 2 3 4 5 6 7 8 9 10 ...  \$ Survived : int 0 1 1 1 0 0 0 0 1 1 ...  \$ Pclass : int 3 1 3 1 3 3 1 3 3 2 ...  \$ Name : chr "...  \$ Sex : chr "male" "female" "female"  \$ Age : num 22 38 26 35 35 NA 54 2  \$ SibSp : int 1 1 0 1 0 0 0 3 0 1 ...  \$ Parch : int 0 0 0 0 0 0 0 1 2 0 ...  \$ Ticket : chr "A/5 21171" "PC 17599"  \$ Fare : num 7.25 71.28 7.92 53.1 8.05 ...  \$ Cabin : chr "" "C85" "" "C123" ...  | We can understand the structure of the data with this function.  We can understand the data types of each variable.  We can understand that what type of graphical representation we can perform by using which variable to better understand the data. For example: Survived is int and Sex is chr, so we can plot a bar graph by count.                                                                                                          |
| names(df)                                 | "PassengerId" "Survived" "Pclass" "Name" "Sex" "Age" "SibSp" "Parch" "Ticket" "Fare" "Cabin"                                                                                                                                                                                                                                                                                                                                                                                           | We can see all the names of all the variables. It helps in understanding all the variables present in the dataset at a glance. It helps to quickly refer to names while writing the code.                                                                                                                                                                                                                                                          |
| summary(Fare)  summary(Age)  summary(Sex) | \> summary(Fare)  Min. 1st Qu. Median Mean 3rd Qu. Max.   0.00 7.91 14.45 32.20 31.00 512.33   \> summary(Age)  Min. 1st Qu. Median Mean 3rd Qu. Max. NA's   0.42 20.12 28.00 29.70 38.00 80.00 177   \> summary(Sex)  Length Class Mode   891 character character                                                                                                                                                                                                                     | Summary function provides the 5 Point summary of quantitative variable along with some other insights too.  Summary of fare helps us to understand that mean is 32.20 while median is 14.45, which means there should be outliers in the fare. The range is 512.33 - 0 = 512, which means the data is very skewed.   Summary of Age provides the insights that the data is centred between somewhat 30 Age. There are 177 NA’s in the Age column.  |

3.3 Uni-variate Analysis

Univariate data consists of **only one variable**. It does not deal with causes
or relationships and the main purpose of the analysis is to describe the data
and find patterns that exist within it.

SURVIVED  

We have a total 891 observations. We know that the values of 0 and 1 represents
people survived and not survived. Simple table representation shows us that the
people not survived are much higher than survived.

![Chart, waterfall chart Description automatically
generated](media/8d8f0a3b969144ae4ca8f9bdcb351bce.png)

Pclass (Passenger Class)  

In Passenger class there are 3 different class. Highest number of passengers are
in class 3 followed by class 1 and lowest being class 2. There are almost Double
the passengers in class 3 then class 1 and 2. Surprisingly, more people in
Pclass 1 than 2. The possible reason of higher number of passengers in class 3
could be the low Fair of class 3.

![Chart Description automatically generated with medium
confidence](media/2c940b7d42dd3dfcd61088cdd67cc3ad.png)

Sex (Gender) – There are 577 males and 314 females out of total passengers. The
ration of males is nearly double than females.

![Chart, waterfall chart Description automatically
generated](media/3a2fc1a1ba0e038a41d1900e90bd4c36.png)

Age – Histogram

A histogram is a graphical representation that organizes a group of data points
into user-specified ranges. Most of the passengers belongs to 20-40 Age
Interval. There are very less passengers above 60.

![Chart, histogram Description automatically
generated](media/d1c8599e420d6e431af9e33e63194538.png)

Age (Line Chart) – At the age of 30 there is 22.7 % of all age groups. There was
more young passengers in the ship.

![Graphical user interface Description automatically
generated](media/7fab2815d4fd2ef8c8759e248ae50f6d.png)

3.4 Bi-Variate Analysis

Bi- variate data involves **two different variables**. The analysis of this type
of data deals with causes and relationships and the analysis is done to find out
the relationship among the two variables.

Pclass vs Sex  

There are more men in all Pclass. But the ratio of men to women is a lot higher
in Pclass 3.

![Chart, bar chart, waterfall chart Description automatically
generated](media/1de96fe35dc5b4e54497487a69cb845d.png)

Survived vs Sex  

There are more deaths of men’s and the survival of females are higher than men.
In above graphs we saw that there are more men’s in class 3 than any other
class.

![Chart, bar chart Description automatically
generated](media/39ad614b1b17122d270c4537805e8ebc.png)

Survived vs Pclass  

Those who paid more prioritized for rescue. People in Pclass 1 had much better
chances of survival than other classes.

![Chart, bar chart Description automatically
generated](media/c7e520fdd594bb358ea8c430c802875e.png)

![Table Description automatically
generated](media/979914bb11c2c1049cdc6666e13a1f14.png)

Age vs Fare (Scatter Plot)  

A graph in which the values of two variables are plotted along two axes, the
pattern of the resulting points revealing any correlation present. We see that
most of the passengers opt for fare between 0-50 irrespective of their age.

![Chart, scatter chart Description automatically
generated](media/d89ee4b0962107227c9193b06062ccf1.png)

3.4 Multi -Variate Analysis

Pclass – Sex – Survived  

Multi variate analysis depicts the relationship between more than two variables.
There are only 3 deaths of female from Class 1

**![Table Description automatically
generated](media/b1e908591d1cb587d441478a738bd4f6.png)**

**  
**

3.5 Missing Value Identification

Functions to Find If there is NA/Blanks in the columns.

**Output of console**

\> sum(Survived!="")

[1] 891

\> sum(Pclass!="")

[1] 891

\> sum(Sex!="")

[1] 891

\> sum(Age!="")

[1] NA

Here we can see that CABIN has only 177 Values and remaining 891-204 = 687
values are missing, Hence 77% values are missing, Thus it is much better to drop
this column for EDA purpose.  

In age 263 values are missing, this is 19.86% of the dataset. Since Age as a
Variable is a important for EDA as per my general opinion hence we will use mean
method to fill all the NA’s.

With summary function we can see that the MEAN Age is 29.70, So we will take 30
as our MEAN age to fill all the NA.

![Table Description automatically
generated](media/f11e536081600de1bd0e2cd35d2ef5a0.png)

3.6 Outlier Identification

With skewness function from e1071 library, we can see that the skewness in fare
is 4.77.  
The fare is highly right skewed and the number of outliers are many in fare. We
can also infer that the Fare of males is more skewed than female.

![Chart, histogram Description automatically
generated](media/5f609e547441fdc46cde1bf2a59d4b58.png)

In the below graph we can see the number of outliers present in fare in female
and male fairs. The Dot represent the outliers in the data.  
![Chart Description automatically generated with medium
confidence](media/7679ced12f368d2401008c91008e0643.png)

We have filled all the NA’s in Age. After NA fill , there are some outliers
present in Age also, which represents there are few people of age that were not
in common among other members. The people above 65 (approx.) are considered as
outliers.  

![](media/6575f9e76372b6187185ec47d08ee751.png)

4 Conclusion

-   If you were a male in the Titanic, the best chances of survival would be if
    you were:

    -   A child not in third class

    -   A first class young adult

    -   A first class middle aged adult

-   The best chances for survival overall are if you were a female not in third
    class.

-   The Majority of people belong to 20-40 Age group.

-   Men survived less as compared to woman.

-   The higher the class number (the cheaper the fare), the more people died.

5 Appendix A

setwd("E:/Welingkar Tri 2/R_We/R/WE_ASN_WD")

library(rpivotTable)

library(lattice)

library(e1071)

library(ggplot2)

library(esquisse)

esquisser(viewer = "browser")

df = read.csv("train.csv")

View(df)

attach(df)

dim(df)

head(df)

tail(df)

str(df)

\#EDA

names(df)

summary(df)

\#which(is.na(Cabin))

\#Find If there is NA/Blanks in the columns

\#Code to find how many non empty cells are there

sum(df\$PassengerId!="")

sum(Survived!="")

sum(Pclass!="")

sum(Sex!="")

sum(Age!="")

sum(is.na(Age))

sum(Ticket!="")

sum(Fare!="")

sum(Cabin!="")

\#Here we can see that CABIN has only 177 Values and remaining 891-204 = 687
values are missing, Hence 77% values are missing, Thus

\#it is much better to drop this column for EDA purpose

df = subset(df,select = -c(Cabin,Name,SibSp,Parch,PassengerId,Ticket))

View(df)

\#Since Age as a Variable is a important for EDA as per my general opinion and
19.86% Values are missing, hence we will use mean method

\#to fill the NA Values

summary(Age)

\#We can see that the MEAN Age is 29.70, So we will take 30 as our MEAN age to
fill all the NA.

df[is.na(df)] \<- 30

df2 = df

View(df)

\#measures of central Tendency - Mean, Median

mean(Age)

median(df\$Age)

\#measures of dispersion

\#range - gives min and max values - base

range(Fare)

\#std deviation -

sd(Fare)

\#variance

var(Fare)

\#quartile deviation - quantile function is equal to quartile

quantile(Fare)

\# measures of shape

skewness(df\$Fare)

range(Fare)

skewness(df\$Age)

kurtosis(Fare)

\# Univariate analysis

table(Survived)

table(Pclass)

\#Bivariate analysis

table(Survived,Sex)

table(Pclass,Survived)

table(Pclass,Sex)

\#\#Multivariate analysis

table(Pclass, Survived,Sex)

\#Lattice Package

histogram(Age)

histogram(Fare)

histogram(\~Age\|Sex, data = df)

bwplot(\~Fare)

\#Boxplot by Categories

bwplot(\~Fare\|Sex, data = df, xlab = "Fare", ylab = "Sex")

bwplot(\~Age)

\#Rpivot Table for Visualization

rpivotTable(df)

\#kernel density plot

qplot(Fare, data = df, geom = "density", fill=Sex, alpha=I(.5))

qplot(Age, data = df, geom = "histogram", fill=Sex, alpha=I(.5))

*\#======================================================================= \#*
