library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for navigation functionality
test_that("Navigation test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setWindowSize(1200, 800)  # Adjust window size as needed
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test sidebar navigation
  app$click(selector = "a[data-value='fe']", method = "css")
  expect_true(app$isVisible(css = ".tab-content #fe"))
  
  app$click(selector = "a[data-value='gsea']", method = "css")
  expect_true(app$isVisible(css = ".tab-content #gsea"))
  
  # Test clicking on the logo to return to home
  app$click(selector = "#logo", method = "css")
  expect_true(app$isVisible(css = ".tab-content #home"))
  
  # Continue testing other navigation links...
  
  # Close the app
  app$stop()
})
