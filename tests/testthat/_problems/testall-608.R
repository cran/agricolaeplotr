# Extracted from testall.R:608

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
outdesign <- design.lsd(trt, serie = 2)
p <- plot_latin_square(outdesign, reverse_y = TRUE,
                         reverse_x = TRUE)
expect_identical(p$labels$y, "row")
