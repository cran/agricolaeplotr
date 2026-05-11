# Extracted from testall.R:446

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
k <- 2
r <- 6
trt <- c("CIP-101", "CIP-201",
                     "CIP-301", "CIP-401",
                     "CIP-501", LETTERS[1:2])
outdesign <- design.cyclic(trt,
                                       k = k, r = r, serie = 3,
                                       rowcol = TRUE)
p <- plot_cyclic(outdesign,
                             factor_name = "trt",
                             reverse_y = TRUE, reverse_x = TRUE)
expect_identical( p@layers$geom_tile$computed_mapping$y[[2]][[3]], "block")
