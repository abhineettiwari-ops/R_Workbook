#Q1) Write an R program that: 
#1. Takes two numeric values from user. 
# store first number
a <- 2  
# store second number
b <- 3  
a
b


--------------------------------------------------------------------------------

  
#2. Performs all arithmetic operations (+, −, *, /, power, modulus).  
# assign value to a
a <- 10  

# assign value to b
b <- 5  

# add both numbers
sum <- a + b  

# subtract second from first
difference <- a - b  

# multiply both numbers
product <- a * b  

# divide first by second
division <- a / b  

# raise a to power b
power <- a ^ b  

# find remainder
modulus <- a %% b  

# print all results
print(sum)         # addition result
print(difference)  # subtraction result
print(product)     # multiplication result
print(division)    # division result
print(power)       # power result
print(modulus)     # remainder result


--------------------------------------------------------------------------------


# 3. Stores the results in a vector.  
a <- 10                      # assign value to a
b <- 5                       # assign value to b

sum <- a + b                 # add both numbers
difference <- a - b          # subtract second from first
product <- a * b             # multiply both numbers
division <- a / b            # divide first by second
power <- a ^ b               # raise a to power b
modulus <- a %% b            # find remainder

results <- c(sum, difference, product, division, power, modulus)   # store all results in vector

print(results)              # print all values




--------------------------------------------------------------------------------


  
#4. Displays the maximum, minimum, and average value of the results.  
  

a <- 10                      # assign value to a
b <- 5                       # assign value to b

sum <- a + b                 # add both numbers
difference <- a - b          # subtract
product <- a * b             # multiply
division <- a / b            # divide
power <- a ^ b               # power
modulus <- a %% b            # remainder

results <- c(sum, difference, product, division, power, modulus)   # store all values

max_val <- max(results)      # find maximum value
min_val <- min(results)      # find minimum value
avg_val <- mean(results)     # find average value

print(max_val)               # print maximum
print(min_val)               # print minimum
print(avg_val)               # print average


  
--------------------------------------------------------------------------------

#Q2) Create an R program that: 
#1. Generates 10 random numbers between 1 and 100.
  
numbers <- sample(1:100, 10)   # generate 10 random numbers between 1 and 100
print(numbers)                 # print the numbers
  

--------------------------------------------------------------------------------

  
#2. Calculates square root and then rounded value, ceiling, and floor for each square root value.
  
numbers <- sample(1:100, 10)        # generate 10 random numbers

sqrt_values <- sqrt(numbers)        # find square root of each number

round_val <- round(sqrt_values, 2)  # round to 2 decimal places
ceil_val <- ceiling(sqrt_values)    # round up
floor_val <- floor(sqrt_values)     # round down

print(sqrt_values)   # print square roots
print(round_val)     # print rounded values
print(ceil_val)      # print ceiling values
print(floor_val)     # print floor values  


--------------------------------------------------------------------------------


#3. Stores results in a data frame. 
  
numbers <- sample(1:100, 10)                  # generate 10 random numbers

df <- data.frame(                             # create data frame
  numbers,                                    # original numbers
  sqrt = sqrt(numbers),                       # square root
  round = round(sqrt(numbers), 2),            # rounded values
  ceiling = ceiling(sqrt(numbers)),           # round up
  floor = floor(sqrt(numbers))                # round down
)

print(df)                                     # print data frame


--------------------------------------------------------------------------------

#Q3) Write an R program that: 
#1. Takes a list of names. 
#2. Converts all names to uppercase. 
#3. Calculates the number of characters in each name. 
#4. Combines the name and its length into a formatted sentence.
  
names <- c("ram", "sita", "amit", "neha")     # list of names

upper_names <- toupper(names)                # convert to uppercase

lengths <- nchar(names)                      # count characters

sentences <- paste("Name:", upper_names,     # combine text
                   "Length:", lengths)       # removed '-' issue

print(sentences)                             # print result



--------------------------------------------------------------------------------


#Q4) Write an R program that: 
#1. Creates a vector of numbers from 1 to 200. 
#2. Finds numbers that are divisible by 3 and 5. 
#3. Calculates square root and square of those numbers. 
#4. Displays results in a table format.  
  
nums <- 1:200                               # create numbers from 1 to 200

filtered <- nums[nums %% 3 == 0 & nums %% 5 == 0]   # numbers divisible by 3 and 5

sqrt_val <- sqrt(filtered)                  # square root of numbers
square_val <- filtered^2                    # square of numbers

df <- data.frame(                           # create table
  numbers = filtered,                       # original numbers
  sqrt = sqrt_val,                          # square root values
  square = square_val                       # square values
)

print(df)                                   # display table



--------------------------------------------------------------------------------

  
#Q5) Write an R program to evaluate a quadratic equation for given a, b, c values  
#and return real or complex roots. 
#Formula:  
#  For ax² + bx + c = 0 
#Discriminant: D = b² − 4ac 
#Roots:   x = (-b ± √D) / 2a
a <- 1                         # value of a
b <- -3                        # value of b
c <- 2                         # value of c

D <- b^2 - 4*a*c               # calculate discriminant

if(D >= 0){                    # check if roots are real
  
  x1 <- (-b + sqrt(D)) / (2*a)   # first root
  x2 <- (-b - sqrt(D)) / (2*a)   # second root
  
  print(x1)                     # print first root
  print(x2)                     # print second root
  
} else {                       # if roots are complex
  
  real <- -b / (2*a)            # real part
  imag <- sqrt(-D) / (2*a)      # imaginary part
  
  print(paste(real, "+", imag, "i"))   # first complex root
  print(paste(real, "-", imag, "i"))   # second complex root
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
