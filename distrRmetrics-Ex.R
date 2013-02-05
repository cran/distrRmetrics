pkgname <- "distrRmetrics"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('distrRmetrics')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("SNorm-class")
### * SNorm-class

flush(stderr()); flush(stdout())

### Name: SNorm-class
### Title: SNorm distribution
### Aliases: SNorm-class mean,SNorm-method mean<-,SNorm-method
###   nu,SNorm-method nu<-,SNorm-method sd,SNorm-method sd<-,SNorm-method
###   xi,SNorm-method xi<-,SNorm-method
### Keywords: distribution

### ** Examples

(SN <- SNorm(xi=2)) # SN is a skewed normal distribution with nu = 3.
set.seed(1)
r(SN)(1) # one random number generated from this distribution, e.g. -0.4037723
d(SN)(1) # Density of this distribution is  0.1914826 for x = 1.
p(SN)(1) # Probability that x < 1 is 0.8374454.
q(SN)(.1) # Probability that x < -1.137878 is 0.1.
xi(SN) # shape of this distribution is 2.
xi(SN) <- 2.5 # shape of this distribution is now 2.5.
plot(SN)



cleanEx()
nameEx("SNorm")
### * SNorm

flush(stderr()); flush(stdout())

### Name: SNorm
### Title: Generating function for skewed normal class
### Aliases: SNorm
### Keywords: distribution

### ** Examples

(SN <- SNorm(mean = 1, sd = 1, xi = 0.5))
plot(SN)



cleanEx()
nameEx("SNormParameter-class")
### * SNormParameter-class

flush(stderr()); flush(stdout())

### Name: SNormParameter-class
### Title: Parameter of an SNorm distributions
### Aliases: SNormParameter-class mean,SNormParameter-method
###   sd,SNormParameter-method xi,SNormParameter-method
### Keywords: distribution models

### ** Examples

P <- new("SNormParameter")
mean(P)
sd(P)
xi(P)
P



cleanEx()
nameEx("SSTd-class")
### * SSTd-class

flush(stderr()); flush(stdout())

### Name: SSTd-class
### Title: SSTd distribution
### Aliases: SSTd-class mean,SSTd-method mean<-,SSTd-method nu nu-methods
###   nu<- nu<--methods nu,SSTd-method nu<-,SSTd-method sd,SSTd-method
###   sd<-,SSTd-method xi xi-methods xi<- xi<--methods xi,SSTd-method
###   xi<-,SSTd-method
### Keywords: distribution

### ** Examples

(ST <- SSTd(xi=2, nu = 3)) # ST is a skewed t distribution with xi = 2 and nu = 3.
set.seed(1)
r(ST)(1) # one random number generated from this distribution, e.g. -0.4432824
d(ST)(1) # Density of this distribution is 0.1204624 for x = 1.
p(ST)(1) # Probability that x < 1 is 0.9035449.
q(ST)(.1) # Probability that x < -0.4432824 is 0.1.
nu(ST) # df of this distribution is 3.
nu(ST) <- 4 # df of this distribution is now 4.
plot(ST)



cleanEx()
nameEx("SSTd")
### * SSTd

flush(stderr()); flush(stdout())

### Name: SSTd
### Title: Generating function for SSTd-class
### Aliases: SSTd
### Keywords: distribution

### ** Examples

(ST <- SSTd(mean = 1, sd = 1, xi = 0.5))
plot(ST)



cleanEx()
nameEx("SSTdParameter-class")
### * SSTdParameter-class

flush(stderr()); flush(stdout())

### Name: SSTdParameter-class
### Title: Parameter of an SSTd distributions
### Aliases: SSTdParameter-class mean,SSTdParameter-method
###   sd,SSTdParameter-method xi,SSTdParameter-method
###   nu,SSTdParameter-method
### Keywords: distribution models

### ** Examples

P <- new("SSTdParameter")
mean(P)
sd(P)
xi(P)
nu(P)
P



cleanEx()
nameEx("STd")
### * STd

flush(stderr()); flush(stdout())

### Name: STd
### Title: Generating function for standardized T distribution class
### Aliases: STd
### Keywords: distribution

### ** Examples

(ST <- STd(mean = 1, sd = 1, nu = 3))
plot(ST)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
