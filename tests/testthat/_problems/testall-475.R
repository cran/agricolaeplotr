# Extracted from testall.R:475

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
                         design = "lsd")
p <- plot_design.factorial_lsd(outdesign,
                                 reverse_y = TRUE, reverse_x = TRUE)
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "row")
