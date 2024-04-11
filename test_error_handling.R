library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for error handling
test_that("Error handling test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Navigate to a specific tab or page where error handling should be tested
  
  # Example: Navigate to a non-existent page to trigger a 404 error
  app$navigate("https://fungifun3.hki-jena.de/non_existent_page")
  
  # Test for the presence of error message or page not found content
  expect_true(app$isVisible(css = ".error-message"))
  expect_true(app$getText(css = ".error-message") == "Page not found")
  
  # You can add more test cases to cover different error scenarios
  
  # Close the app
  app$stop()
})
