#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))

df <- as.data.frame(Titanic)

#See the top rows of the data
#TASK: Write the function to see the top rows of the data

head(df)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr

install.packages("dplyr")
library(dplyr)

#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)

selected <- select(df, Survived, Sex)

#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name

new_df <- selected

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)

new_df <- select(new_df, -Sex)

#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'

new_df <- rename(selected, Gender = Sex)

#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column

df_gender <- new_df

#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'

df_males = filter(df_gender, Gender == "Male")

#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())

arranged_df <- arrange(df_gender, Gender)

#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:2201

total_freq <- sum(df$Freq)

#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'

df_females <- filter(df_gender, Gender == "Female")

#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')

joined_df <- bind_rows(df_males, df_females)


#Optional Task: add any of the other functions 
#you learned about from the dplyr package

# union() vs. union_all()
# group_by() as well as summarize()
