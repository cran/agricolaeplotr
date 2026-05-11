test_that("throws error if data type is not an integer but a string", {
  expect_error(test_input_extend("3"))
})
test_that("throws error if data type is not an integer but a float", {
  expect_error(test_input_extend(-2.5))
})
test_that("throws error if data type is not an integer but a boolean", {
  expect_error(test_input_extend(TRUE))
})
sd <- "cat2"
test_that("throws error if data type is not an integer
          but an object containg string", {
  expect_error(test_input_extend(sd))
})

test_that("throws error if data type is not an integer but an float", {
  expect_silent(test_input_extend(2.5))
})
test_that("keeps silent if data type is correct integer ", {
  expect_silent(test_input_extend(2))
})
sd <- 10.5
test_that("throws error if data type is not an integer
          but an object containing float ", {
  expect_silent(test_input_extend(sd))
})

test_that("throws error if data type is not an integer but a string", {
  expect_error(test_input_extend("3"))
})
test_that("throws error if data type is not an integer but float", {
  expect_error(test_input_extend(-2.5))
})
test_that("throws error if data type is not an integer but boolean", {
  expect_error(test_input_extend(TRUE))
})
sd <- "cat2"
test_that("throws error if data type is not an
          integer but an object containg a string", {
  expect_error(test_input_extend(sd))
})

test_that("throws error if data type is not an integer but ", {
  expect_silent(test_input_extend(2.5))
})
test_that("throws error if data type is not an integer but ", {
  expect_silent(test_input_extend(2))
})
sd <- 10.5
test_that("throws error if data type is not an integer but ", {
  expect_silent(test_input_extend(sd))
})

test_that("keeps silent if data type is a boolean", {
  expect_silent(test_input_reverse(TRUE))
})  # no messages if success
test_that("throws error if data type is not an boolean but a string", {
  expect_error(test_input_reverse("TRUE"))
})
test_that("throws error if data type is not an boolean but an integer", {
  expect_error(test_input_reverse(2))
})
test_that("throws error if length is greater than 1", {
  expect_error(test_input_reverse(c(2, 3, 4)))
})

test_that("unkown treatment", {
  expect_silent(test_string("cat"))
})  # no messages if success
test_that("throws error if data type is not a string but a integer", {
  expect_error(test_string(1))
})  # no messages if success
test_that("throws error if data type is not a string but a boolean", {
  expect_error(test_string(TRUE))
})  # no messages if success
test_that("throws error if data type is not a string but a float", {
  expect_error(test_string(2.4))
})  # no messages if success
test_that("throws error if data type is not a string
          but a negative sign float", {
  expect_error(test_string(-2.4))
})  # no messages if success
sd <- 12.55
test_that("throws error if data type is not a string
          but an object containing float", {
  expect_error(test_string(sd))
})  # no messages if success
sd <- "cat2"
test_that("if data type is correct and also works with
          object containing correct data type", {
  expect_silent(test_string(sd))
})  # no messages if success

##### test column and row indicator #######

test_that("throws error if data type is not an integer but a string", {
  expect_error(test_input_ncols("3"))
})
test_that("throws error if data type is not an integer
          but a float with negative sign", {
  expect_error(test_input_ncols(-2.5))
})
test_that("throws error if data type is not an integer but a boolean", {
  expect_error(test_input_ncols(TRUE))
})
sd <- "cat2"
test_that("throws error if data type is not an integer
          but an object containing a string", {
  expect_error(test_input_ncols(sd))
})

test_that("throws error if data type is not an integer
          but a float with positive sign", {
  expect_error(test_input_ncols(2.5))
})
test_that("keeps silent if input is correctly defined", {
  expect_silent(test_input_ncols(2))
})
test_that("throws error if data type is not an
          positive integer", {
  expect_error(test_input_ncols(-2))
})

sd <- 10.5
test_that("throws error if number is not greater than zero", {
            expect_error(test_input_ncols(0))
          })
test_that("throws error if data type is not an integer
          but an object containing a float", {
  expect_error(test_input_ncols(sd))
})
test_that("throws error if length > 1", {
  expect_error(test_input_ncols(c(2, 3, 4)))
})


test_that("throws error if data type is not an integer but a string", {
  expect_error(test_input_nrows("3"))
})
test_that("throws error if data type is not an integer
          but a float with negative sign", {
  expect_error(test_input_nrows(-2.5))
})
test_that("throws error if data type is not an integer
          but a integer with negative sign", {
  expect_error(test_input_nrows(-2))
})
test_that("throws error if number is not greater than zero", {
            expect_error(test_input_nrows(0))
          })

test_that("throws error if data type is not an integer but a boolean", {
  expect_error(test_input_nrows(TRUE))
})
sd <- "cat2"
test_that("throws error if data type is not an integer
          but an object containing a string", {
  expect_error(test_input_nrows(sd))
})

test_that("throws error if data type is not an integer
          but a float with negative sign", {
  expect_error(test_input_nrows(2.5))
})
test_that("keeps silent if input is correcty defined", {
  expect_silent(test_input_nrows(2))
})
sd <- 10.5
test_that("throws error if data type is not an integer
          but an object containing a float with negative sign", {
  expect_error(test_input_nrows(sd))
})
test_that("throws error if length > 1", {
  expect_error(test_input_nrows(c(2, 3, 4)))
})

######## test names #########

test_that("no error, if using default designs in terms of name checking", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_silent(test_names_design(outdesign))
})

test_that("list elements have wrong names", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  names(outdesign) <- c("name1", "sjdfsf")
  expect_error(test_names_design(outdesign))
})

test_that("silent if a table is added to an outdesign", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  outdesign$book2 <- "something else here?"
  expect_silent(test_names_design(outdesign))
})

test_that("correct name of factor or plot", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(test_name_in_column("plot", outdesign))
})

test_that("incorrect name and type of factor name", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(test_name_in_column(125, outdesign))
})


test_that("incorrect name of factor", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(test_name_in_column(TRUE, outdesign))
})
test_that("correct name of factor", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_silent(test_name_in_column("plots", outdesign))
})
test_that("correct name of factor", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_silent(test_name_in_column("A", outdesign))
})
test_that("unkown treatment", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(test_name_in_column("C", outdesign))
})

test_that("unkown treatment", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(test_name_in_column("C", outdesign))
})


test_that("incorrect design youden", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_youden(outdesign))
})

test_that("incorrect design alpha", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_alpha(outdesign))
})

test_that("incorrect design bib", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_bib(outdesign))
})

test_that("incorrect design cyclic", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_cyclic(outdesign))
})

test_that("incorrect design dau", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_dau(outdesign))
})

test_that("incorrect design bib", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "rcbd")
  expect_error(plot_design.factorial_crd(outdesign))
})

test_that("incorrect factorial lsd design", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_design.factorial_lsd(outdesign))
})

test_that("incorrect factorial rcbd design dau", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_design.factorial_rcbd(outdesign))
})

test_that("incorrect design crd", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_design_crd(outdesign))
})

test_that("incorrect graeco design", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_graeco(outdesign))
})

test_that("incorrect design latin square", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_latin_square(outdesign))
})

test_that("incorrect lattice simple design alpha",
          {
            trt <- c(2, 4)
            k <- 2
            outdesign <- design.ab(trt, r = k, serie = 3,
                                   design = "crd")
            expect_error(plot_lattice_simple(outdesign))
          })

test_that("incorrect lattice triple design alpha",
          {
            trt <- c(2, 4)
            k <- 2
            outdesign <- design.ab(trt, r = k, serie = 3,
                                   design = "crd")
            expect_error(plot_lattice_triple(outdesign))
          })

test_that("incorrect rcbd design ", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_rcbd(outdesign))
})

test_that("incorrect split plot design crd", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_split_crd(outdesign))
})

test_that("incorrect split plot design lsd", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_split_lsd(outdesign))
})

test_that("incorrect split plot design crbd", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_split_rcbd(outdesign))
})

test_that("incorrect split plot design lsd", {
  trt <- c(2, 4)
  k <- 2
  outdesign <- design.ab(trt, r = k, serie = 3,
                         design = "crd")
  expect_error(plot_strip(outdesign))
})

test_that("plot error due to low nrow number factorial crd",
          {
            trt <- c(3, 2)  # factorial 3x2
            outdesign <- design.ab(trt, r = 3, serie = 2,
                                   design = "crd")
            expect_error(plot_design.factorial_crd(outdesign,
                         ncols = 5, nrows = 2, reverse_y = TRUE,
                         reverse_x = TRUE))
          })


test_that("plot error due to low nrow number split plot crd",
          {
            T1 <- c("a", "b", "c", "d", "e", "f", "g")
            T2 <- c("v", "w", "x", "y", "zzz")
            r <- 4
            outdesign <- design.split(trt1 = T1, trt2 = T2, r = r,
                        serie = 2, seed = 0, kinds = "Super-Duper",
                        randomization = TRUE,
                      first = TRUE, design = "crd")
            expect_error(plot_split_crd(outdesign, ncols = 1, nrows = 5))
          })

test_that("plot has correct properties", {
  trt<-LETTERS[1:5]
  outdesign<- design.lsd(trt,serie=2)

  p <- plot_latin_square(outdesign, space_width = 0.9, width = 3, height = 5,space_height = 0.9)
  stats <- DOE_obj(p)
  expect_equal(stats$total_area, 375)
  expect_equal(stats$space_between, 71.25)
  expect_equal(stats$eff_total_area, 303.75)
  expect_equal(stats$eff_area_total, 360.15)
  expect_equal(stats$outer_area, 360.15)
  expect_equal(stats$outer_area, stats$eff_area_total)


  expect_equal(stats$rel_space_width, 0.9)
  expect_equal(stats$rel_space_height, 0.9)
  expect_equal(stats$share_eff_plot, 0.81)
  expect_equal(stats$share_space_plot, 0.19)

  expect_equal(stats$gross_width_plot, 3)
  expect_equal(stats$gross_height_plot, 5)
  expect_equal(stats$total_area_plot, 15)
  expect_equal(stats$eff_plot_size, 12.15)

  expect_equal(stats$eff_width, 14.7)
  expect_equal(stats$eff_height, 24.5)
  expect_equal(stats$eff_width_plot, 2.7)
  expect_equal(stats$eff_height_plot, 4.5)
  expect_equal(stats$abs_space_height, 0.5)
  expect_equal(stats$abs_space_width, 0.3)

  expect_equal(stats$net_plot_diagonal, 5.25)
  expect_equal(stats$gross_plot_diagonal, 5.83)
  expect_equal(stats$experiment_diagonal, 20.8)
  expect_equal(stats$outer_diagonal, 28.6)

  expect_equal(stats$xmin, 1.65)
  expect_equal(stats$xmax, 16.35)
  expect_equal(stats$ymin, 2.75)
  expect_equal(stats$ymax, 27.25)
  expect_equal(stats$n_cols, 5)
  expect_equal(stats$n_rows, 5)
  expect_equal(stats$n_plots, 25)
  expect_equal(stats$n_fac, 5)

})
