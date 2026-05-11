# Extracted from testall.R:618

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
p <- p + theme_pres()
expect_identical(p$computed_mapping$y[[2]][[3]], "row")
