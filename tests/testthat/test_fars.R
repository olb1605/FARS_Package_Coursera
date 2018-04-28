library(testthat)
context(fars_read)


test_that("wrong filename results in an error",
      {
        expect_error(fars_read("filename.txt"), "file 'filename.txt' does not exist")
  })


context(make_filename)
test_that("invalid years result in an error",
          {
            expect_error(make_filename(lakgjg),"object 'lakgjg' not found")
          })


context(fars_read_years)
test_that("invalid years result in an error",
          {
            expect_error(fars_read_years(sjaghshgjs), "object 'sjaghshgjs' not found")
          })

context(fars_summarize_years)
test_that("correct with proper arguments", {
  expect_is(fars_summarize_years(2013:2015), "tbl_df")
  expect_error(fars_summarize_years(2016))
})


context(fars_map_state)
test_that("invalid arguments result in an error", {
  expect_error(fars_map_state(150, 2015))
  expect_error(fars_map_state(1, 2026))
})

