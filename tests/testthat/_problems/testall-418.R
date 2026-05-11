# Extracted from testall.R:418

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "agricolaeplotr", path = "..")
attach(test_env, warn.conflicts = FALSE)

# prequel ----------------------------------------------------------------------
sd <- "cat2"
sd <- 10.5
sd <- "cat2"
sd <- 10.5
sd <- 12.55
sd <- "cat2"
sd <- "cat2"
sd <- 10.5
sd <- "cat2"
sd <- 10.5

# test -------------------------------------------------------------------------
trt <- 1:30
t <- length(trt)
k <- 3
s <- t/k
r <- 2
outdesign <- design.alpha(trt, k, r, serie = 2)
p <- plot_alpha(outdesign, reverse_y = TRUE,
                  reverse_x = TRUE)
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
