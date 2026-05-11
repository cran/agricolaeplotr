# Extracted from testall.R:555

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
trt <- c(2, 3, 4, 5, 6)
outdesign1 <- design.crd(trt, r = 5, serie = 2, 2543,
                           "Mersenne-Twister")
p <- plot_design_crd(outdesign1, ncols = 13, nrows = 3,
                       reverse_y = TRUE, reverse_x = TRUE)
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "row")
