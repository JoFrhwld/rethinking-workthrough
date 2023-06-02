# I don't understand why or how this
# plus what's in Makevars works, but it's
# the only way I can get rstan & brms installed
#renv::init(bare = TRUE)
Sys.setenv(MAKEFLAGS = "-j4") # four cores used
install.packages(c("Rcpp", "RcppEigen", "RcppParallel", "StanHeaders"), type = "source")
install.packages("rstan", type = "source")
example(stan_model, package = "rstan", run.dontrun = TRUE)
install.packages('mvtnorm', dep = TRUE)
install.packages("brms")
