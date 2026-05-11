# Extracted from testall.R:522

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
varieties <- c("perricholi", "yungay", "maria bonita",
                 "tomasa")
outdesign <- design.youden(varieties, r = 2, serie = 2,
                             seed = 23)
p <- plot_youden(outdesign, labels = "varieties",
                   reverse_y = TRUE, reverse_x = TRUE)
expect_identical(p$computed_mapping$y[[2]][[3]], "row")
