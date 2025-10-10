library(dplyr)

# filter() is used to select rows which match specific conditions.
# For example, filtering rows where sales_amount is greater than 200:

sales_data <- data.frame(
    order_id = 1:10,
    order_date = as.Date("2025-10-10") + 0:9,
    sales_amount = c(30, 150, 200, 120, 300, 350, 400, 450, 500, 410)
)

filtered_sales <- sales_data %>% filter(sales_amount > 200)
print(filtered_sales)

# select() allows you to pick out specific columns from a data frame.
# For example, if you only need name, job title, and email from a list of employees:

hr_data <- data.frame(
    employee_id = 1:5,
    name = c("Alice", "Bob", "Charlie", "Diana", "Eva"),
    job_title = c ("Manager", "Developer", "Analyst", "Designer", "Tester"),
    email = c("alice@example.com", "bob@example.com", "charlie@example.com", "diana@example.com", "eva@example.com")
)

contact_list <- hr_data %>% select(name, job_title, email)

print(contact_list)

# arrange() is used to sort rows based on values.
# For example, arraning employee data by salary or name lists alphabetically:

employee_data <- data.frame(
    employee_id = 1:5,
    name = c("Alice", "Bob", "Charlie", "Diana", "Eva"),
    salary = c(70000, 55000, 62000, 75000, 68000)
)

sorted_employees <- employee_data %>% arrange(desc(salary)) # arrange() defaults to ascending order. Use desc() for descending order.
print(sorted_employees)