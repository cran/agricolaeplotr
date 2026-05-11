# Extracted from testall.R:459

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
T1 <- c("A", "B", "C", "D", "E", "F")
T2 <- letters[19:26]
outdesign <- design.dau(T1, T2, r = 5, serie = 2)
p <- plot_dau(outdesign, reverse_y = TRUE,
                reverse_x = TRUE)
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
