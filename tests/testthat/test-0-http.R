context("http")

library(httr)

test_that("check that response is compressed", {
  r = retail:::GET("https://retail-api.exegetic.biz/retailer")

  expect_equal(headers(r)$`content-encoding`, "gzip")
})
