##### R Project 4: Normal Distribution
##### Name: Jonathan Kang
##### Version Number: 1


#############################
###### PART 1 ###############
###### GRAPH  ###############
#############################

## DENSITY FUNCTION
	## C1: Create x-values - code
xvals_part1 <- seq(-3.8, 3.8, by=0.005)

	## C2: Create y-values - code
yvals_part1 <- dnorm(xvals_part1, 0, 1)

	## C3: Create Plot - code
	## Remember to save your plot and also submit it to Gradescope.
plot(xvals_part1, yvals_part1, type = "l",
     main = "Standard Normal Probability Density Function",
     xlab = "Standard Normal Variable", ylab = "Density",
     col = "blueviolet")




#############################
###### PART 1 ###############
###### QUESTIONS  ###########
#############################

## Question 1: Largest approximate y value
	# Answer: 0.3989423
max(yvals_part1)


## Question 2: Describe the Standard Normal Density Function
	# Answer:
#Standard normal density functions are symmetrical, bell shaped curves.




## Question 3: x-values
	# Do they stop?
#No

	# Reason:
#Unless bounded like the part 1 graph,
#x values do not stop at either side,
#going from -infinity to infinity. The graph creates the bounds just to
#present the data small but good enough to show important data.

	# If they don't stop, what do they go to?
#-infinity to infinity.



## Question 4: Standard Normal Questions
	## a) What is the mean and variance of the standard normal distribution?
			## Mean = 0
			## Variance = 1
	

	## b) What random variable abbreviation do we usually use to represent the standard normal distribution?
			## Answer: Z

	
	## c) Based on graph in Part 1, what do the values on the horizontal axis represent?
			## Answer:
#For a standard normal distribution, it would be z-score, or how many
#standard deviations it is from the mean, but for z-score it's negative
#for left half side, positive for right half.






#############################
###### PART 2 ###############
###### GRAPH  ###############
#############################

## CUMULATIVE DISTRIBUTION FUNCTION
## X ~ N(mean = 340; variance = 400) (see PDF for mean and variance values)


	## C4: Create x-values - code
xvals_part2 <- seq(270, 410, by=7)


	## C5: Create y-values - code
yvals_part2 <- pnorm(xvals_part2, 340, sqrt(400))


	## C6: Create Plot - code
plot(xvals_part2, yvals_part2, type = "l", main = "Normal CDF Function",
     xlab = "x-values", ylab = "Cumulative Probability P(X <= x)",
     col = "brown2")


	## C7: Cumulative Probabilities - code
cumulative_prob <- c(0.07, 0.28, 0.50, 0.72, 0.93)


	## C8: Find x-values associated with cumulative probabilities - code
quantile_k <- qnorm(cumulative_prob, 340, sqrt(400))


	## C9: Overlay points on plot - code
points(quantile_k, cumulative_prob, pch = 17, col = "dodgerblue2")


	## C10: Add text at each point - code
	## Remember to save your plot and also submit it to Gradescope.  <- this is the only plot from Part 2 you need to submit.
text(quantile_k, cumulative_prob,
     labels = paste("(", round(quantile_k,2), ", ", cumulative_prob,")", sep = ""),
     pos = 4)





#############################
###### PART 2 ###############
###### QUESTIONS  ###########
#############################

## Question 5: What do the y-values approach as x goes to +/- infinity?
	# As x goes towards -infinity: 0


	# As x goes towards +infinity: 1





## Question 6: Pick one of the points on your graph from part 2.  Write a probability statement involving the $x$- and $y$- coordinate values that describes how they relate to each other.

	# Point you will use: (340, 0.5)


	# Probability Statement: P(X<=340)=0.5





## Question 7: Create and answer your own probability question based on your Part 2 graph.
## Include your code and your final answer.
## Do NOT use a table or your calculator.

	# Question: Find 75th percentile for y


	# Code:
qnorm(0.75, 340, sqrt(400))

	# Answer: 353.4898



