# Ungraded Lab: Practice with Retail Data in R

# Load the tidyverse library
library(tidyverse)  # This loads the tidyverse package, making its functions available.

# ================================================
# Activity 1: Load and Examine the Data
# ================================================

# Load the retail dataset (retail_set1.csv)
retail_data <- read_csv("retail_set1.csv")  # read_csv() from the readr package reads the CSV file into a data frame.

# Examine the data structure
print(head(retail_data)) # View the first few rows

(str(retail_data))  # str() shows the structure of the data frame, including column names and data types. This helps understand the data's organization.

# ================================================
# Activity 2: Filtering Data
# ================================================
# Filter the dataset to find all items in the "Clothing" category using filter():
# Example:
# clothing_items <- filter(retail_data, Category == "Clothing")
# print(clothing_items)

# Try it Out #1 : Filter the dataset to find all items in the "Shoes" category using filter().

shoes_only <- retail_data %>% filter(Category == "Shoes")
print(shoes)

# Try it Out #2 : Filter the dataset to find all items in the "Electronics" category using filter().

electronics_only <- retail_data %>% filter(Category == "Electronics")
print(electronics_only)

# ================================================
# Activity 3: Selecting Relevant Columns
# ================================================
# Select the "Item" and "Price" columns from the dataset using select()
# Example

# item_prices <- select(retail_data, Item, Price)
# print(item_prices)

# Try it Out #1 : Select the "Item" and "Available" columns from the dataset using select().

item_available <- retail_data %>% select(Item, Available)
print(item_available)

# Try it Out #2 : Select the "Category" and "Price" columns from the dataset using select().

category_price <- retail_data %>% select(Category, Price)
print(category_price)

# ================================================
# Activity 4: Arranging (Sorting) Data
# ================================================
# Arrange the dataset by price from highest to lowest using arrange():

# Example
# sorted_prices <- arrange(retail_data, desc(Price))
# print(sorted_prices)

# Try it Out #1 : Arrange the dataset by availability status using arrange().

avail_status <- retail_data %>% arrange(desc(Available))
print(avail_status)

# Try it Out #2 : Arrange the dataset by price from lowest to highest using arrange().

price_low_high <- retail_data %>% arrange(Price)
print(price_low_high)

# ================================================
# Bringing it all Together
# ================================================
# Fill in the blanks with your code below:

# Problem #1 : Identify the necessary function(s) and code the solution.

books_items <- filter(retail_data, Category == "Books" & Price > 10)

# First, filter to only rows where Category is "Books" AND the Price is above $10. This helps us find more expensive books.

sorted_books <- books_items %>% arrange(desc(Price))
# Then, sort those books by price in descending order, so the most expensive ones are listed first.

print(sorted_books)

# Problem #2 : Identify the necessary function(s) and code the solution.

expensive_sports_outdoors <- retail_data %>% filter(Category == "Sports & Outdoors" & Price > 20)
# We start by filtering for "Sports & Outdoors" items that cost more than $20.

selected_sports_outdoors <- expensive_sports_outdoors %>% select(Item, Price)
# Then we select only the "Item" and "Price" columns — great for quickly listing high-cost products in that category.

print(selected_sports_outdoors)