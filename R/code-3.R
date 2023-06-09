# R code 2.1

sample <- c("W", "L", "W", "W", "W", "L", "W", "L", "W")
W <- sum(sample == "W") # number of W observed
L <- sum(sample == "L") # number of L observed
p <- c(0, 0.25, 0.5, 0.75, 1) # proportions W
ways <- sapply(p, function(q) (q * 4)^W * ((1 - q) * 4)^L)
prob <- ways / sum(ways)
cbind(p, ways, prob)

