n <- 1000
lambda <- 0.2
sim_output <- rexp(n, lambda)
library(lattice)
hist(sim_output, xlab="Random Deviate Value", ylab="Number of simulation occurrences", 
     main = "Simulation of size 1000")
abline(v=mean(sim_output), col="red", lwd = 4)

# rexp(40, 0.2)
# mean_of_means = NULL
# for (i in 1 : 1000) mean_of_means = c(mean_of_means, mean(rexp(40, 0.2)))

mean_of_means = NULL
sample_data = NULL
for (i in 1 : 10000) mean_of_means = c(mean_of_means, mean(rexp(40, 0.2)))
hist(mean_of_means)

1. Show the sample mean and compare it to the theoretical mean of the distribution.
2. Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.
3. Show that the distribution is approximately normal.
http://mathforum.org/library/drmath/view/72065.html

curve(dnorm(x, mean=mean_of_means, sd=sd(mean_of_means)), add=TRUE)
