# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vec1, vec2) {
  difference <- length(vec2)- length(vec1)
  answer <- paste("The difference in lengths is ", difference)
  return (answer)
}

# Pass two vectors of different length to your `CompareLength` function
vector1 <- c(1, 2, 3)
vector2 <- c(4,5,6,7,7)

CompareLength(vector1, vector2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vec1, vec2) {
  len <- length(vec2) - length(vec1)
  if(CompareLength(vec1, vec2) > 0) {
    return (paste("Your first vector is longer by", abs(len), "elements"))
  } else {
    return (paste("Your second vector is longer by", len, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2,3,4,5), c(1,2,3))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
