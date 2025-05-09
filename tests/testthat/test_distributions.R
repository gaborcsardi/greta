test_that("normal distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::normal,
    stats::dnorm,
    parameters = list(mean = -2, sd = 3),
    x = rnorm(100, -2, 3)
  )
})


test_that("multidimensional normal distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::normal,
    stats::dnorm,
    parameters = list(mean = -2, sd = 3),
    x = array(
      rnorm(100, -2, 3),
      dim = c(10, 2, 5)
    ),
    dim = c(10, 2, 5)
  )
})

test_that("uniform distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::uniform,
    stats::dunif,
    parameters = list(min = -2.1, max = -1.2),
    x = runif(100, -2.1, -1.2)
  )
})

test_that("lognormal distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::lognormal,
    stats::dlnorm,
    parameters = list(meanlog = 1, sdlog = 3),
    x = rlnorm(100, 1, 3)
  )
})

test_that("bernoulli distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::bernoulli,
    extraDistr::dbern,
    parameters = list(prob = 0.3),
    x = rbinom(100, 1, 0.3)
  )
})

test_that("binomial distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::binomial,
    stats::dbinom,
    parameters = list(size = 10, prob = 0.8),
    x = rbinom(100, 10, 0.8)
  )
})

test_that("beta-binomial distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::beta_binomial,
    extraDistr::dbbinom,
    parameters = list(
      size = 10,
      alpha = 0.8,
      beta = 1.2
    ),
    x = extraDistr::rbbinom(100, 10, 0.8, 1.2)
  )
})

test_that("negative binomial distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::negative_binomial,
    stats::dnbinom,
    parameters = list(size = 3.3, prob = 0.2),
    x = rnbinom(100, 3.3, 0.2)
  )
})

test_that("hypergeometric distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::hypergeometric,
    stats::dhyper,
    parameters = list(m = 11, n = 8, k = 5),
    x = rhyper(100, 11, 8, 5)
  )
})

test_that("poisson distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::poisson,
    stats::dpois,
    parameters = list(lambda = 17.2),
    x = rpois(100, 17.2)
  )
})

test_that("gamma distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::gamma,
    stats::dgamma,
    parameters = list(shape = 1.2, rate = 2.3),
    x = rgamma(100, 1.2, 2.3)
  )
})

test_that("inverse gamma distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::inverse_gamma,
    extraDistr::dinvgamma,
    parameters = list(alpha = 1.2, beta = 0.9),
    x = extraDistr::rinvgamma(100, 1.2, 0.9)
  )
})

test_that("weibull distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::weibull,
    dweibull,
    parameters = list(
      shape = 1.2,
      scale = 0.9
    ),
    x = rweibull(100, 1.2, 0.9)
  )
})

test_that("exponential distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::exponential,
    stats::dexp,
    parameters = list(rate = 1.9),
    x = rexp(100, 1.9)
  )
})

test_that("pareto distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::pareto,
    extraDistr::dpareto,
    parameters = list(a = 1.9, b = 2.3),
    x = extraDistr::rpareto(100, 1.9, 2.3)
  )
})

test_that("student distribution has correct density", {
  skip_if_not(check_tf_version())

  dstudent <- extraDistr::dlst

  compare_distribution(
    greta::student,
    dstudent,
    parameters = list(
      df = 3,
      mu = -0.9,
      sigma = 2
    ),
    x = rnorm(100, -0.9, 2)
  )
})

test_that("laplace distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::laplace,
    extraDistr::dlaplace,
    parameters = list(mu = -0.9, sigma = 2),
    x = extraDistr::rlaplace(100, -0.9, 2)
  )
})

test_that("beta distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::beta,
    stats::dbeta,
    parameters = list(
      shape1 = 2.3,
      shape2 = 3.4
    ),
    x = rbeta(100, 2.3, 3.4)
  )
})

test_that("cauchy distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::cauchy,
    stats::dcauchy,
    parameters = list(
      location = -1.3,
      scale = 3.4
    ),
    x = rcauchy(100, -1.3, 3.4)
  )
})

test_that("logistic distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::logistic,
    stats::dlogis,
    parameters = list(
      location = -1.3,
      scale = 2.1
    ),
    x = rlogis(100, -1.3, 2.1)
  )
})

test_that("f distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::f,
    df,
    parameters = list(df1 = 5.9, df2 = 2),
    x = rf(100, 5.9, 2)
  )
})

test_that("chi squared distribution has correct density", {
  skip_if_not(check_tf_version())

  compare_distribution(
    greta::chi_squared,
    stats::dchisq,
    parameters = list(df = 9.3),
    x = rchisq(100, 9.3)
  )
})

test_that("multivariate normal distribution has correct density", {
  skip_if_not(check_tf_version())

  # parameters to test
  m <- 5
  mn <- t(rnorm(m))
  sig <- rWishart(1, m + 1, diag(m))[,, 1]

  # function converting Sigma to sigma
  dmvnorm2 <- function(x, mean, Sigma, log = FALSE) {
    # nolint
    mvtnorm::dmvnorm(x = x, mean = mean, sigma = Sigma, log = log)
  }

  compare_distribution(
    greta::multivariate_normal,
    dmvnorm2,
    parameters = list(mean = mn, Sigma = sig),
    x = mvtnorm::rmvnorm(100, mn, sig),
    multivariate = TRUE
  )
})

test_that("Wishart and LKJ distributions have correct density", {
  skip_if_not(check_tf_version())

  # NOTE: we no longer have unit tests for the densities of the Wishart and LKJ
  # distributions, because the greta implementation uses the distribution over
  # hcolesky factors, combined with the log det jacobian for change of support
  # from the cholesky factor to the symmetric matrix. This distribution is
  # non-standard, so there is no reference distribution in R against which to
  # compare the log probs. Instead, the implied densities for these
  # distributions are tested using integration tests with the MCMC sampler, in
  # test_posteriors_wishart.R and test_posteriors_lkj.R.
  skip()
})

test_that("multinomial distribution has correct density", {
  skip_if_not(check_tf_version())

  # parameters to test
  m <- 5
  prob <- t(runif(m))
  size <- 5

  # vectorise R's density function
  dmultinom_vec <- function(x, size, prob) {
    apply(x, 1, stats::dmultinom, size = size, prob = prob)
  }

  compare_distribution(
    greta::multinomial,
    dmultinom_vec,
    parameters = list(
      size = size,
      prob = prob
    ),
    x = t(rmultinom(100, size, prob)),
    multivariate = TRUE
  )
})

test_that("categorical distribution has correct density", {
  skip_if_not(check_tf_version())

  # parameters to test
  m <- 5
  prob <- t(runif(m))

  # vectorise R's density function
  dcategorical_vec <- function(x, prob) {
    apply(x, 1, stats::dmultinom, size = 1, prob = prob)
  }

  compare_distribution(
    greta::categorical,
    dcategorical_vec,
    parameters = list(prob = prob),
    x = t(rmultinom(100, 1, prob)),
    multivariate = TRUE
  )
})

test_that("dirichlet distribution has correct density", {
  skip_if_not(check_tf_version())
  # parameters to test
  m <- 5
  alpha <- t(runif(m))

  compare_distribution(
    greta_fun = greta::dirichlet,
    r_fun = extraDistr::ddirichlet,
    parameters = list(alpha = alpha),
    x = extraDistr::rdirichlet(100, alpha),
    multivariate = TRUE
  )
})

test_that("dirichlet-multinomial distribution has correct density", {
  skip_if_not(check_tf_version())

  # parameters to test
  size <- 10
  m <- 5
  alpha <- t(runif(m))

  compare_distribution(
    greta::dirichlet_multinomial,
    extraDistr::ddirmnom,
    parameters = list(
      size = size,
      alpha = alpha
    ),
    x = extraDistr::rdirmnom(
      100,
      size,
      alpha
    ),
    multivariate = TRUE
  )
})

test_that("scalar-valued distributions can be defined in models", {
  skip_if_not(check_tf_version())

  x <- randn(5)
  y <- round(randu(5))
  p <- iprobit(normal(0, 1))

  # variable (need to define a likelihood)
  a <- variable()
  distribution(x) <- normal(a, 1)
  expect_ok(model(a))

  # univariate discrete distributions
  distribution(y) <- bernoulli(p)
  expect_ok(model(p))

  distribution(y) <- binomial(1, p)
  expect_ok(model(p))

  distribution(y) <- beta_binomial(1, p, 0.2)
  expect_ok(model(p))

  distribution(y) <- negative_binomial(1, p)
  expect_ok(model(p))

  distribution(y) <- hypergeometric(5, 5, p)
  expect_ok(model(p))

  distribution(y) <- poisson(p)
  expect_ok(model(p))

  # multivariate discrete distributions
  y <- extraDistr::rmnom(1, size = 4, prob = runif(3))
  p <- iprobit(normal(0, 1, dim = 3))
  distribution(y) <- multinomial(4, t(p))
  expect_ok(model(p))

  y <- extraDistr::rmnom(1, size = 1, prob = runif(3))
  p <- iprobit(normal(0, 1, dim = 3))
  distribution(y) <- categorical(t(p))
  expect_ok(model(p))

  y <- extraDistr::rmnom(1, size = 4, prob = runif(3))
  alpha <- lognormal(0, 1, dim = 3)
  distribution(y) <- dirichlet_multinomial(4, t(alpha))
  expect_ok(model(alpha))

  # univariate continuous distributions
  expect_ok(model(normal(-2, 3)))
  expect_ok(model(student(5.6, -2, 2.3)))
  expect_ok(model(laplace(-1.2, 1.1)))
  expect_ok(model(cauchy(-1.2, 1.1)))
  expect_ok(model(logistic(-1.2, 1.1)))

  expect_ok(model(lognormal(1.2, 0.2)))
  expect_ok(model(gamma(0.9, 1.3)))
  expect_ok(model(exponential(6.3)))
  expect_ok(model(beta(6.3, 5.9)))
  expect_ok(model(inverse_gamma(0.9, 1.3)))
  expect_ok(model(weibull(2, 1.1)))
  expect_ok(model(pareto(2.4, 1.5)))
  expect_ok(model(chi_squared(4.3)))
  expect_ok(model(f(24.3, 2.4)))

  expect_ok(model(uniform(-13, 2.4)))

  # multivariate continuous distributions
  sig <- rWishart(1, 4, diag(3))[,, 1]

  expect_ok(model(multivariate_normal(t(rnorm(3)), sig)))
  expect_ok(model(wishart(4, sig)))
  expect_ok(model(lkj_correlation(5, dimension = 3)))
  expect_ok(model(dirichlet(t(runif(3)))))
})

test_that("array-valued distributions can be defined in models", {
  skip_if_not(check_tf_version())

  dim <- c(5, 2)
  x <- randn(5, 2)
  y <- round(randu(5, 2))

  # variable (need to define a likelihood)
  a <- variable(dim = dim)
  distribution(x) <- normal(a, 1)
  expect_ok(model(a))

  # univariate discrete distributions
  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- bernoulli(p)
  expect_ok(model(p))

  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- binomial(1, p)
  expect_ok(model(p))

  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- beta_binomial(1, p, 0.2)
  expect_ok(model(p))

  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- negative_binomial(1, p)
  expect_ok(model(p))

  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- hypergeometric(10, 5, p)
  expect_ok(model(p))

  p <- iprobit(normal(0, 1, dim = dim))
  distribution(y) <- poisson(p)
  expect_ok(model(p))

  # multivariate discrete distributions
  y <- extraDistr::rmnom(5, size = 4, prob = runif(3))
  p <- iprobit(normal(0, 1, dim = 3))
  distribution(y) <- multinomial(4, t(p), n_realisations = 5)
  expect_ok(model(p))

  y <- extraDistr::rmnom(5, size = 1, prob = runif(3))
  p <- iprobit(normal(0, 1, dim = 3))
  distribution(y) <- categorical(t(p), n_realisations = 5)
  expect_ok(model(p))

  y <- extraDistr::rmnom(5, size = 4, prob = runif(3))
  alpha <- lognormal(0, 1, dim = 3)
  distribution(y) <- dirichlet_multinomial(4, t(alpha), n_realisations = 5)
  expect_ok(model(alpha))

  # univariate continuous distributions
  expect_ok(model(normal(-2, 3, dim = dim)))
  expect_ok(model(student(5.6, -2, 2.3, dim = dim)))
  expect_ok(model(laplace(-1.2, 1.1, dim = dim)))
  expect_ok(model(cauchy(-1.2, 1.1, dim = dim)))
  expect_ok(model(logistic(-1.2, 1.1, dim = dim)))

  expect_ok(model(lognormal(1.2, 0.2, dim = dim)))
  expect_ok(model(gamma(0.9, 1.3, dim = dim)))
  expect_ok(model(exponential(6.3, dim = dim)))
  expect_ok(model(beta(6.3, 5.9, dim = dim)))
  expect_ok(model(uniform(-13, 2.4, dim = dim)))
  expect_ok(model(inverse_gamma(0.9, 1.3, dim = dim)))
  expect_ok(model(weibull(2, 1.1, dim = dim)))
  expect_ok(model(pareto(2.4, 1.5, dim = dim)))
  expect_ok(model(chi_squared(4.3, dim = dim)))
  expect_ok(model(f(24.3, 2.4, dim = dim)))

  # multivariate continuous distributions
  sig <- rWishart(1, 4, diag(3))[,, 1]
  expect_ok(
    model(multivariate_normal(t(rnorm(3)), sig, n_realisations = dim[1]))
  )
  expect_ok(model(dirichlet(t(runif(3)), n_realisations = dim[1])))
  expect_ok(model(wishart(4, sig)))
  expect_ok(model(lkj_correlation(3, dimension = dim[1])))
})

test_that("distributions can be sampled from by MCMC", {
  skip_if_not(check_tf_version())

  x <- randn(100)
  y <- round(randu(100))

  # variable (with a density)
  a <- variable()
  distribution(x) <- normal(a, 1)
  sample_distribution(a)

  b <- variable(lower = -1)
  distribution(x) <- normal(b, 1)
  sample_distribution(b)

  c <- variable(upper = -2)
  distribution(x) <- normal(c, 1)
  sample_distribution(c)

  d <- variable(lower = 1.2, upper = 1.3)
  distribution(x) <- normal(d, 1)
  sample_distribution(d)

  # univariate discrete
  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- bernoulli(p)
  sample_distribution(p)

  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- binomial(1, p)
  sample_distribution(p)

  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- negative_binomial(1, p)
  sample_distribution(p)

  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- hypergeometric(10, 5, p)
  sample_distribution(p)

  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- poisson(p)
  sample_distribution(p)

  p <- iprobit(normal(0, 1, dim = 100))
  distribution(y) <- beta_binomial(1, p, 0.3)
  sample_distribution(p)

  # multivariate discrete
  y <- extraDistr::rmnom(5, size = 4, prob = runif(3))
  p <- uniform(0, 1, dim = 3)
  distribution(y) <- multinomial(4, t(p), n_realisations = 5)
  sample_distribution(p)

  y <- extraDistr::rmnom(5, size = 1, prob = runif(3))
  p <- iprobit(normal(0, 1, dim = 3))
  distribution(y) <- categorical(t(p), n_realisations = 5)
  sample_distribution(p)

  y <- extraDistr::rmnom(5, size = 4, prob = runif(3))
  alpha <- lognormal(0, 1, dim = 3)
  distribution(y) <- dirichlet_multinomial(4, t(alpha), n_realisations = 5)
  sample_distribution(alpha)

  # univariate continuous
  sample_distribution(normal(-2, 3))
  sample_distribution(student(5.6, -2, 2.3))
  sample_distribution(laplace(-1.2, 1.1))
  sample_distribution(cauchy(-1.2, 1.1))
  sample_distribution(logistic(-1.2, 1.1))

  sample_distribution(lognormal(1.2, 0.2), lower = 0)
  sample_distribution(gamma(0.9, 1.3), lower = 0)
  sample_distribution(exponential(6.3), lower = 0)
  sample_distribution(beta(6.3, 5.9), lower = 0, upper = 1)
  sample_distribution(inverse_gamma(0.9, 1.3), lower = 0)
  sample_distribution(weibull(2, 1.1), lower = 0)
  sample_distribution(pareto(2.4, 0.1), lower = 0.1)
  sample_distribution(chi_squared(4.3), lower = 0)
  sample_distribution(f(24.3, 2.4), lower = 0)

  sample_distribution(uniform(-13, 2.4), lower = -13, upper = 2.4)

  # multivariate continuous
  sig <- rWishart(1, 4, diag(3))[,, 1]
  sample_distribution(multivariate_normal(t(rnorm(3)), sig))
  sample_distribution(wishart(10L, Sig = diag(2)), warmup = 0)
  sample_distribution(lkj_correlation(4, dimension = 3))
  sample_distribution(dirichlet(t(runif(3))))
})

test_that("uniform distribution errors informatively", {
  skip_if_not(check_tf_version())
  # skip_on_ci()

  # bad types
  expect_snapshot(
    error = TRUE,
    uniform(min = 0, max = NA)
  )

  expect_snapshot(
    error = TRUE,
    uniform(min = 0, max = head)
  )

  expect_snapshot(
    error = TRUE,
    uniform(min = 1:3, max = 5)
  )

  # good types, bad values
  expect_snapshot(
    error = TRUE,
    uniform(min = -Inf, max = Inf)
  )

  # lower not below upper
  expect_snapshot(
    error = TRUE,
    uniform(min = 1, max = 1)
  )
})

test_that("poisson() and binomial() error informatively in glm", {
  # skip_on_ci()
  skip_if_not(check_tf_version())

  # if passed as an object
  expect_snapshot(error = TRUE, glm(1 ~ 1, family = poisson))

  expect_snapshot(error = TRUE, glm(1 ~ 1, family = binomial))

  # if executed alone
  expect_snapshot(error = TRUE, glm(1 ~ 1, family = poisson()))

  # if given a link
  expect_snapshot(error = TRUE, glm(1 ~ 1, family = poisson("sqrt")))
})

test_that("wishart distribution errors informatively", {
  skip_if_not(check_tf_version())

  a <- randn(3, 3)
  b <- randn(3, 3, 3)
  c <- randn(3, 2)

  expect_true(inherits(
    wishart(3, a),
    "greta_array"
  ))

  expect_snapshot(
    error = TRUE,
    wishart(3, b)
  )

  expect_snapshot(
    error = TRUE,
    wishart(3, c)
  )
})

test_that("lkj_correlation distribution errors informatively", {
  skip_if_not(check_tf_version())

  dim <- 3

  expect_true(inherits(
    lkj_correlation(3, dim),
    "greta_array"
  ))

  expect_snapshot(error = TRUE, lkj_correlation(-1, dim))

  expect_snapshot(error = TRUE, lkj_correlation(c(3, 3), dim))

  expect_snapshot(error = TRUE, lkj_correlation(uniform(0, 1, dim = 2), dim))

  expect_snapshot(error = TRUE, lkj_correlation(4, dimension = -1))

  expect_snapshot(error = TRUE, lkj_correlation(4, dim = c(3, 3)))

  expect_snapshot(error = TRUE, lkj_correlation(4, dim = NA))
})

test_that("multivariate_normal distribution errors informatively", {
  skip_if_not(check_tf_version())

  m_a <- randn(1, 3)
  m_b <- randn(2, 3)
  m_c <- randn(3)
  m_d <- randn(3, 1)

  a <- randn(3, 3)
  b <- randn(3, 3, 3)
  c <- randn(3, 2)
  d <- randn(4, 4)

  # good means
  expect_true(inherits(
    multivariate_normal(m_a, a),
    "greta_array"
  ))

  expect_true(inherits(
    multivariate_normal(m_b, a),
    "greta_array"
  ))

  # bad means
  expect_snapshot(error = TRUE, multivariate_normal(m_c, a))

  expect_snapshot(error = TRUE, multivariate_normal(m_d, a))

  # good sigmas
  expect_true(inherits(
    multivariate_normal(m_a, a),
    "greta_array"
  ))

  # bad sigmas
  expect_snapshot(error = TRUE, multivariate_normal(m_a, b))

  expect_snapshot(error = TRUE, multivariate_normal(m_a, c))

  # mismatched parameters
  expect_snapshot(error = TRUE, multivariate_normal(m_a, d))

  # scalars
  expect_snapshot(error = TRUE, multivariate_normal(0, 1))

  # bad n_realisations
  expect_snapshot(
    error = TRUE,
    multivariate_normal(m_a, a, n_realisations = -1)
  )

  expect_snapshot(
    error = TRUE,
    multivariate_normal(m_a, a, n_realisations = c(1, 3))
  )

  # bad dimension
  expect_snapshot(error = TRUE, multivariate_normal(m_a, a, dimension = -1))

  expect_snapshot(
    error = TRUE,
    multivariate_normal(m_a, a, dimension = c(1, 3))
  )
})

test_that("multinomial distribution errors informatively", {
  skip_if_not(check_tf_version())

  p_a <- randu(1, 3)
  p_b <- randu(2, 3)

  # same size & probs
  expect_true(inherits(
    multinomial(size = 10, p_a),
    "greta_array"
  ))

  expect_true(inherits(
    multinomial(size = 1:2, p_b),
    "greta_array"
  ))

  # n_realisations from prob
  expect_true(inherits(
    multinomial(10, p_b),
    "greta_array"
  ))

  # n_realisations from size
  expect_true(inherits(
    multinomial(c(1, 2), p_a),
    "greta_array"
  ))

  # scalars
  expect_snapshot(error = TRUE, multinomial(c(1), 1))

  # bad n_realisations
  expect_snapshot(error = TRUE, multinomial(10, p_a, n_realisations = -1))

  expect_snapshot(error = TRUE, multinomial(10, p_a, n_realisations = c(1, 3)))

  # bad dimension
  expect_snapshot(error = TRUE, multinomial(10, p_a, dimension = -1))

  expect_snapshot(error = TRUE, multinomial(10, p_a, dimension = c(1, 3)))
})

test_that("categorical distribution errors informatively", {
  skip_if_not(check_tf_version())

  p_a <- randu(1, 3)
  p_b <- randu(2, 3)

  # good probs
  expect_true(inherits(
    categorical(p_a),
    "greta_array"
  ))

  expect_true(inherits(
    categorical(p_b),
    "greta_array"
  ))

  # scalars
  expect_snapshot(error = TRUE, categorical(1))

  # bad n_realisations
  expect_snapshot(error = TRUE, categorical(p_a, n_realisations = -1))

  expect_snapshot(error = TRUE, categorical(p_a, n_realisations = c(1, 3)))

  # bad dimension
  expect_snapshot(error = TRUE, categorical(p_a, dimension = -1))

  expect_snapshot(error = TRUE, categorical(p_a, dimension = c(1, 3)))
})

test_that("dirichlet distribution errors informatively", {
  skip_if_not(check_tf_version())

  alpha_a <- randu(1, 3)
  alpha_b <- randu(2, 3)

  # good alpha
  expect_true(inherits(
    dirichlet(alpha_a),
    "greta_array"
  ))

  expect_true(inherits(
    dirichlet(alpha_b),
    "greta_array"
  ))

  # scalars
  expect_snapshot(error = TRUE, dirichlet(1))

  # bad n_realisations
  expect_snapshot(error = TRUE, dirichlet(alpha_a, n_realisations = -1))

  expect_snapshot(error = TRUE, dirichlet(alpha_a, n_realisations = c(1, 3)))

  # bad dimension
  expect_snapshot(error = TRUE, dirichlet(alpha_a, dimension = -1))

  expect_snapshot(error = TRUE, dirichlet(alpha_a, dimension = c(1, 3)))
})


test_that("dirichlet values sum to one", {
  skip_if_not(check_tf_version())

  alpha <- uniform(0, 10, dim = c(1, 5))
  x <- dirichlet(alpha)
  m <- model(x)
  draws <- mcmc(m, n_samples = 100, warmup = 100, verbose = FALSE)

  sums <- rowSums(as.matrix(draws))
  compare_op(sums, 1)
})

test_that("dirichlet-multinomial distribution errors informatively", {
  skip_if_not(check_tf_version())

  alpha_a <- randu(1, 3)
  alpha_b <- randu(2, 3)

  # same size & probs
  expect_true(inherits(
    dirichlet_multinomial(size = 10, alpha_a),
    "greta_array"
  ))

  expect_true(inherits(
    dirichlet_multinomial(size = 1:2, alpha_b),
    "greta_array"
  ))

  # n_realisations from alpha
  expect_true(inherits(
    dirichlet_multinomial(10, alpha_b),
    "greta_array"
  ))

  # n_realisations from size
  expect_true(inherits(
    dirichlet_multinomial(c(1, 2), alpha_a),
    "greta_array"
  ))

  # scalars
  expect_snapshot(error = TRUE, dirichlet_multinomial(c(1), 1))

  # bad n_realisations
  expect_snapshot(
    error = TRUE,
    dirichlet_multinomial(10, alpha_a, n_realisations = -1)
  )

  expect_snapshot(
    error = TRUE,
    dirichlet_multinomial(10, alpha_a, n_realisations = c(1, 3))
  )

  # bad dimension
  expect_snapshot(
    error = TRUE,
    dirichlet_multinomial(10, alpha_a, dimension = -1)
  )

  expect_snapshot(
    error = TRUE,
    dirichlet_multinomial(10, alpha_a, dimension = c(1, 3))
  )
})

test_that("multivariate distribs with matrix params can be sampled from", {
  skip_if_not(check_tf_version())

  n <- 10
  k <- 3

  # multivariate normal
  x <- randn(n, k)
  mu <- normal(0, 1, dim = c(n, k))
  distribution(x) <- multivariate_normal(mu, diag(k))
  m <- model(mu)
  expect_ok(draws <- mcmc(m, warmup = 0, n_samples = 5, verbose = FALSE))

  # multinomial
  size <- 5
  x <- t(rmultinom(n, size, runif(k)))
  p <- uniform(0, 1, dim = c(n, k))
  distribution(x) <- multinomial(size, p)
  m <- model(p)
  expect_ok(draws <- mcmc(m, warmup = 0, n_samples = 5, verbose = FALSE))

  # categorical
  x <- t(rmultinom(n, 1, runif(k)))
  p <- uniform(0, 1, dim = c(n, k))
  distribution(x) <- categorical(p)
  m <- model(p)
  expect_ok(draws <- mcmc(m, warmup = 0, n_samples = 5, verbose = FALSE))

  # dirichlet
  x <- randu(n, k)
  x <- sweep(x, 1, rowSums(x), "/")
  a <- normal(0, 1, dim = c(n, k))
  distribution(x) <- dirichlet(a)
  m <- model(a)
  expect_ok(draws <- mcmc(m, warmup = 0, n_samples = 5, verbose = FALSE))

  # dirichlet multinomial
  size <- 5
  x <- t(rmultinom(n, size, runif(k)))
  a <- normal(0, 1, dim = c(n, k))
  distribution(x) <- dirichlet_multinomial(size, a)
  m <- model(a)
  expect_ok(draws <- mcmc(m, warmup = 0, n_samples = 5, verbose = FALSE))
})
