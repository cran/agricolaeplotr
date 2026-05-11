# Extracted from testall.R:429

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
trt <- c("A", "B", "C", "D")
k <- 3
outdesign <- design.bib(trt, k, serie = 2,
                          seed = 41, kinds = "Super-Duper")
p <- plot_bib(outdesign, reverse_y = TRUE,
                reverse_x = TRUE, y="block")
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
