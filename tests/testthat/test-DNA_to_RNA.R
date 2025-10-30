test_that("DNA_to_RNA works", {
  RNA <- DNA_to_RNA("ATGC")
  expect_equal(RNA, "AUGC")
})
