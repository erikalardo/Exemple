**Homework1 **
    
##Exercise 1##
    
#1: Given the vector: x <- c("ww", "ee", "ff", "uu", "kk"), what will be the output for x[c(2,3)]?
    x <- c("ww", "ee", "ff", "uu", "kk")
    x[c(2, 3)]
    
#2: Let a <- c(2, 4, 6, 8) and b <- c(TRUE, FALSE, TRUE, FALSE), what will be the output for the R expression max(a[b])?
    a <- c(2, 4, 6, 8)
    b <- c(TRUE, FALSE, TRUE, FALSE)    
    max(a[b])   
    
#3: Is it possible to apply the function my_function_name using x and a as arguments?
   ## ??
        
##Exercice 2##
# Consider a vector x such that: x=c(1, 3, 4, 7, 11, 18, 29) Write an R statement that will return a list X2 with components of value: x * 2, x / 2, sqrt(x) and names 'x*2', 'x/2', 'sqrt(x)'.
        x=c(1, 3, 4, 7, 11, 18, 29)
        x2 <- list("x*2"= x * 2, 'x/2'= x / 2, 'sqrt(x)'= sqrt(x))

##Exercice 3 ##

        Table0 <- read.table("C:/Users/Felice/Desktop/Table0.txt", quote="\"", comment.char="")
        
  #a) What is the data type for the object DS?
        typeof(Table0)
       ## [1] "list"
        
  #b) Change the names of the columns to Name, Age, Height, Weight and Sex.
        colnames(Table0) <- c("Names", "Age", "Height", "Weight", "Sex")
        
  #c) Change the row names so that they are the same as Name, and remove the variable Name.
        Table0 <- column_to_rownames(Table0, var = "Names")
        
  #d) Get the number of rows and columns of the data.       
        nrow(Table0)
       # [1] 7
        ncol(Table0)
       # [1] 4
        
##  Exercice 4 ##
     #a) Convert DS from the previous exercise to a data frame DF.
        as.data.frame(Table0)
     #b) Add an additional column "zeros" in DF with all elements 0.
        add_column(Table0, "zeros"= 0, .after = NULL)
     #c) Remove the Weight comuln from DF.
        Table1 <- Table0 [-c(3)]
        