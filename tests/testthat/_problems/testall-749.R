# Extracted from testall.R:749

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
trt<-LETTERS[1:25]
outdesign<-design.lattice(trt,r=3,serie=2)
p <- plot_lattice_triple(outdesign)
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
