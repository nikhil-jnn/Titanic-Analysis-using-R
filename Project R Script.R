setwd("E:/Welingkar Tri 2/R_We/R/WE_ASN_WD")


library(rpivotTable)
library(lattice)
library(e1071)
library(ggplot2)
library(esquisse)


#options("esquisse.display.mode" = "browser")
#esquisser(viewer = "browser")

df = read.csv("train.csv")
View(df)
attach(df)

dim(df)
head(df)
tail(df)
str(df)

#EDA
names(df)
summary(df)
#which(is.na(Cabin))

#Find If there is NA/Blanks in the columns

#Code to find how many non empty cells are there
sum(df$PassengerId!="")
sum(Survived!="")
sum(Pclass!="")
sum(Sex!="")
sum(Age!="")
sum(is.na(Age))
sum(Ticket!="")
sum(Fare!="")
sum(Cabin!="")

#Here we can see that CABIN has only 177 Values and remaining 891-204 = 687 values are missing, Hence 77% values are missing, Thus 
#it is much better to drop this column for EDA purpose

df = subset(df,select = -c(Cabin,Name,SibSp,Parch,PassengerId,Ticket))
View(df)


#Since Age as a Variable is a important for EDA as per my general opinion and 19.86% Values are missing, hence we will use mean method
#to fill the NA Values

summary(Age)
#We can see that the MEAN Age is 29.70, So we will take 30 as our MEAN age to fill all the NA.
df[is.na(df)] <- 30

df2 = df
View(df)

#measures of central Tendency - Mean, Median
mean(Age)
median(df$Age)

#measures of dispersion
#range - gives min and max values - base
range(Fare)

#std deviation - 
sd(Fare)

#variance
var(Fare)

#quartile deviation - quantile function is equal to quartile
quantile(Fare)

# measures of shape

skewness(df$Fare)
range(Fare)

skewness(df$Age)

skew
kurtosis(Fare)


#############################
# Univariate analysis
table(Survived)
table(Pclass)



#Bivariate analysis
table(Survived,Sex)
table(Pclass,Survived)
table(Pclass,Sex)


##Multivariate analysis
table(Pclass, Survived,Sex)

#Lattice Package

histogram(Age)
histogram(Fare)
histogram(~Age|Sex, data = df)


bwplot(~Fare)

#Boxplot by Categories
bwplot(~Fare|Sex, data = df, xlab = "Fare", ylab = "Sex")
bwplot(~Age)

#Rpivot Table for Visualization
rpivotTable(df)


#kernel density plot
qplot(Fare, data = df, geom = "density", fill=Sex, alpha=I(.5))
qplot(Age, data = df, geom = "histogram", fill=Sex, alpha=I(.5))

