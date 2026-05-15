# Practical Question 2 : Data Manipulation and Aggregation

set.seed(100)

sales <- data.frame(
  Product = sample(c("Laptop", "Mobile", "Tablet"), 50, replace = TRUE),
  City = sample(c("Pune", "Mumbai", "Delhi"), 50, replace = TRUE),
  Quantity = sample(1:5, 50, replace = TRUE),
  Price = sample(seq(10000, 50000, 5000), 50, replace = TRUE)
)

sales$Revenue <- sales$Quantity * sales$Price


# 1. Show records where Revenue > 100000

sales[sales$Revenue > 100000, ]


# 2. Sort data by Revenue in descending order

sales[order(sales$Revenue, decreasing = TRUE), ]


# 3. Find total Revenue by city

aggregate(sales$Revenue, by = list(sales$City), FUN = base::sum)


# 4. Find average price by product

aggregate(Price ~ Product, data = sales, FUN = mean)


# 5. Identify the product with the highest revenue

sales[which.max(sales$Revenue), ]