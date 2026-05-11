# Extracted from testall.R:686

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
T1 <- c("a", "b", "c", "d", "e", "f", "g")
T2 <- c("v", "w", "x", "y", "zzz")
r <- 4
outdesign <- design.split(trt1 = T1, trt2 = T2,
                            r = r, serie = 2, seed = 0, kinds = "Super-Duper",
                            randomization = TRUE, first = TRUE, design = "crd")
p <- plot_split_crd(outdesign, ncols = 6, nrows = 5,
                      reverse_y = TRUE, reverse_x = TRUE,  subplots = FALSE)
p <- p + theme_poster()
p
expect_identical(p$labels$y, "row")
