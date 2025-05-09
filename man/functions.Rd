% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{functions}
\alias{functions}
\title{functions for greta arrays}
\description{
This is a list of functions (mostly from base R) that are
currently implemented to transform greta arrays. Also see \link{operators}
and \link{transforms}.
}
\details{
TensorFlow only enables rounding to integers, so \code{round()} will
error if \code{digits} is set to anything other than \code{0}.

Any additional arguments to \code{chol()}, \code{chol2inv}, \code{solve()}, and \code{log()}
will be ignored, see the TensorFlow documentation for details of these
routines.

\code{sweep()} only works on two-dimensional greta arrays (so \code{MARGIN}
can only be either 1 or 2), and only for subtraction, addition, division
and multiplication.

\code{tapply()} works on column vectors (2D greta arrays with one column),
and \code{INDEX} cannot be a greta array. Currently five functions are
available, and arguments passed to \dots are ignored.

\code{cospi()}, \code{sinpi()}, and \code{tanpi()} do not use the
computationally more stable routines to compute \code{cos(x * pi)} etc.
that are available in R under some operating systems. Similarly
\code{trigamma()} uses TensorFlow's polygamma function, resulting in lower
precision than R's equivalent.
}
\section{Usage}{
 \preformatted{

 # logarithms and exponentials
 log(x)
 exp(x)
 log1p(x)
 expm1(x)

 # miscellaneous mathematics
 abs(x)
 mean(x)
 sqrt(x)
 sign(x)

 # rounding of numbers
 ceiling(x)
 floor(x)
 round(x, digits = 0)

 # trigonometry
 cos(x)
 sin(x)
 tan(x)
 acos(x)
 asin(x)
 atan(x)
 cosh(x)
 sinh(x)
 tanh(x)
 acosh(x)
 asinh(x)
 atanh(x)
 cospi(x)
 sinpi(x)
 tanpi(x)

 # special mathematical functions
 lgamma(x)
 digamma(x)
 trigamma(x)
 choose(n, k)
 lchoose(n, k)

 # matrix operations
 t(x)
 chol(x, ...)
 chol2inv(x, ...)
 cov2cor(V)
 solve(a, b, ...)
 kronecker(X, Y, FUN = c('*', '/', '+', '-'))

 # reducing operations
 sum(..., na.rm = TRUE)
 prod(..., na.rm = TRUE)
 min(..., na.rm = TRUE)
 max(..., na.rm = TRUE)

 # cumulative operations
 cumsum(x)
 cumprod(x)
 cummax(x)
 cummin(x)

 # solve an upper or lower triangular system
 backsolve(r, x, k = ncol(r), upper.tri = TRUE,
           transpose = FALSE)
 forwardsolve(l, x, k = ncol(l), upper.tri = FALSE,
              transpose = FALSE)

 # miscellaneous operations
 aperm(x, perm)
 apply(x, MARGIN, FUN = c("sum", "max", "mean", "min",
                          "prod", "cumsum", "cumprod"))
 sweep(x, MARGIN, STATS, FUN = c('-', '+', '/', '*'))
 tapply(X, INDEX, FUN = c("sum", "max", "mean", "min", "prod"), ...)

}
}

\examples{
\dontrun{

x <- as_data(matrix(1:9, nrow = 3, ncol = 3))
a <- log(exp(x))
b <- log1p(expm1(x))
c <- sign(x - 5)
d <- abs(x - 5)

z <- t(a)

y <- sweep(x, 1, e, "-")
}
}
