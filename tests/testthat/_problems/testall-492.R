# Extracted from testall.R:492

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
SpatpREP1 <- partially_replicated(nrows = 25,
                                  ncols = 18,
                                  repGens = c(280,50,10,1,1),
                                  repUnits = c(1,2,3,20,20),
                                  planter = "cartesian",
                                  plotNumber = 101,
                                  seed = 77)
p <- plot_fieldhub(SpatpREP1,
labels = "PLOT",
factor_name = "PLOT",
width = 12,
height = 10,
reverse_y = TRUE,
reverse_x = TRUE)
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "ROW")
