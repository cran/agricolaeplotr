# Extracted from testall.R:535

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
T1 <- c("a", "b", "c", "d")
T2 <- c("v", "w", "x", "y", "z")
r <- 3
outdesign <- design.strip(trt1 = T1, trt2 = T2,
                            r = r, serie = 2, seed = 0, kinds = "Super-Duper",
                            randomization = TRUE)
p <- plot_strip(outdesign, factor_name_1 = "T1",factor_name_2="T2",
                  reverse_y = TRUE, reverse_x = TRUE)
p
expect_identical(p$labels$y, "row")
