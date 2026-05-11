# Extracted from testall.R:547

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
trt <- c("A", "B", "C", "D", "E")
outdesign <- design.rcbd(trt, 6, serie = 2,
                           986, "Wichmann-Hill")
p <- plot_rcbd(outdesign, reverse_y = TRUE,
                 reverse_x = TRUE)
p
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
