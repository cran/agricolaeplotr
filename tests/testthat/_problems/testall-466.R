# Extracted from testall.R:466

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
trt <- c(3, 2)
outdesign <- design.ab(trt, r = 3, serie = 2,
                         design = "crd")
p <- plot_design.factorial_crd(outdesign, ncols = 5,
                                 nrows = 6, reverse_y = TRUE, reverse_x = TRUE)
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "row")
