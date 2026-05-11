# Extracted from testall.R:660

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
t1 <- c("a", "b", "c", "d", "e","f")
t2 <- c("v", "w", "x", "y", "z")
r <- 3
outdesign2 <- design.split(trt1 = t1, trt2 = t2,
                    r = r, serie = 2, seed = 0, kinds = "Super-Duper",
                    randomization = TRUE, first = TRUE, design = "rcbd")
p <- plot_split_rcbd(outdesign2, width = 5, height = 5,
                       reverse_x = TRUE, reverse_y = TRUE, factor_name_1 = "t1",
                       factor_name_2 = "t2")
p <- p + theme_poster()
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
