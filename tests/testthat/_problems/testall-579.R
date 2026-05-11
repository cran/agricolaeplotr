# Extracted from testall.R:579

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
trt <- LETTERS[1:9]
outdesign <- design.lattice(trt, r = 3, serie = 2)
p <- plot_lattice_triple(design = outdesign,
                           reverse_x = TRUE, reverse_y = TRUE)
expect_identical(p$labels$y, "block")
