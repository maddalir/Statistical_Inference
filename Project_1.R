lambda_val = .2 
size_of_each_set <- 40
num_of_sims <- 1000

# Illustrate via simulation and associated explanatory text the properties of the distribution of the mean of 40 exponentials.
# 1. Show the sample mean and compare it to the theoretical mean of the distribution.
# 2. Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.
# 3. Show that the distribution is approximately normal.

# mean and stddev = 1/lambda_val
# compute and create a matrix of the 1000 exponentieal
m1 <- matrix(replicate(1000,rexp(40,.2)),ncol=40)
#compute means of each sample row
m1_means <- apply(m1,1,mean)
#sample mean
mean(m1_means)
#compute variance
m1_var <- apply(m1,1,var)

# Overlaid histograms with means
ggplot(m1_means, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity") +
  geom_vline(data=cdat, aes(xintercept=5,  colour=cond),
             linetype="dashed", size=1)



y <- for (i in 1 : 5) rexp(3,.2)
hist(mns)
coverage <- sapply(nosim,function(p) {
    each_set_of <- rexp(size_of_each_set,lambda_val)
    ll <- phats + qnorm(.75) * 1/lambda_val
    ul <- phats + qnorm(.75) * 1/lambda_val
  }
  )

# compute means
# compute
