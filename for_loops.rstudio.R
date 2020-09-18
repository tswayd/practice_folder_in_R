# a simple script to experiment with for loops in R

# Delong Tsway
# September 17, 2020
# dttsway@dons.usfca.edu

# create a custom function to square a value
square_this <- function(x) {
  if (!is.numeric(x)) {
     stop("ERROR: It looks like you did not use a numeric value.")
  }
  x^2
}
# test a couple different things to makes sure the function is behaving
# as we expect.
stopifnot(square_this(3) == 9)
stopifnot(square_this(5) == 25)

# create a custom function to add 2 to a value
add_two_to_this <- function(x) {
  if (!is.numeric(x)) {
    stop("ERROR: It looks like you did not use a numeric value.")
  }
  x + 2
}

# test a couple different things to makes sure the function is behaving
# as we expect.
stopifnot(add_two_to_this(2) == 4)
stopifnot(add_two_to_this(7) == 9)

# a basic for loop
for (my_number in 1:5) {
  browser()
  my_number <- square_this(my_number)
  my_number <- add_two_to_this(my_number)
  print(my_number)
}
# test error function
add_two_to_this("red")