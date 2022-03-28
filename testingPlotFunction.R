
source("plotRandomFunction.R")

## Line 2 above tells R to open and run ALL of the code in the file,
##  plotRandomFunction.R !

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)

plotRandom(n=60, mu=70, sigma=2.3)
plotRandom(n=60000, mu=70, sigma=2.3) ## almost perfect bell curve!

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks=30)

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks=300)

set.seed(20220318)
## computer doesn't do random numbers, 
## things called pseudo random number generators
## generate numbers not predictable from a human eye. 
## The seed gives us a random number generator. 
## When we do set seed and then plot random, 
## We get the same graph. 

## Control shift c toggles code back and forth from hashtags.
plotRandom(n=20)

## Playing around with bin sizes to understand how hist()
##  works. 
set.seed(1)
x <- rnorm(n=200)

hist(x)
hist(x, breaks=1)
hist(x, breaks=0)
hist(x, breaks=3)
hist(x, breaks=12)
hist(x, breaks=50)

## Today, March 28th, we will update our function
## to prevent a user from being stupid. 
plotRandom(n=-20)
plotRandom(n=43.5234)
plotRandom(n=-43.432)
plotRandom(n="thirty")

## n here is sample size. Here, I'm saying let the sample size
## be negative 20. This is a count of things sampled and tested, so it
## has to be a positive integer, or natural number. 
##     When we use a decimal number, it runs, but it shouldn't.
## Line 36 works, but what is it doing??
##     n should be a positive integer (the "natural numbers")
##     It is rounding, we don't know whether up or down. 

## To figure out what it is doing....
x<- rnorm(n=43.5234)
length(x)
## Length is 43, so it appears to be truncating. 
## Let's do 2 things to our program. 
##  1. Prevent the user from specifying a negative number. 
##  2. If the user specifies a positive "real" number, 
##     We should tell them what value is actually being used. 

## In every programming language, conditional code exists. 
##  This is what we'll be using today. 
##  It basically says, code only excutes IF the condition is true. 
##    if-else mechanism:
##    - If some condition is true... 
##    {do this.....
##    {else}
##    do this....
##                }

## help(print) = tells what is wrong 
## help (stop) = stops execution
## in c and fortran, there are differenceds between integers and real
## numbers. You can screw things up with this in the old languages. 
##   R uses these old languages behind the scenes, and converts it. 
##   When is.integer(4) is run, it is false because r sees it as a real #. 
##   
## is.wholenumber is a function, way we check is to see the value of the 
## input and its rounded number value. If value is SUPER small, then it 
## is an integer. We call the super small value the tolerance. 
##   iT is 2.22e^-16 or some value when we see the example for 
##   is.wholenumber. 

## help(warning) = wanrs, but doesnt stop the execution. 





















