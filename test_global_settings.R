library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for global settings
test_that("Global settings test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test global settings
  
  # Check if the Shiny port is correctly set
  expect_equal(app$getShinyOption("shiny.port"), 3838)
  
  # Check if max.print is set correctly
  expect_equal(getOption("max.print"), 10000)
  
  # Check if shiny.sanitize.errors is set to FALSE
  expect_false(getOption("shiny.sanitize.errors"))
  
  # Close the app
  app$stop()
})
