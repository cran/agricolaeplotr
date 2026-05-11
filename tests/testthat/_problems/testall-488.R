# Extracted from testall.R:488

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
trt <- c(2, 4)
k <- 6
outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
p <- plot_design.factorial_rcbd(outdesign,
                                  reverse_y = TRUE, reverse_x = TRUE)
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "row")
