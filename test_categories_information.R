library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for categories information retrieval
test_that("Categories information retrieval test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test categories information retrieval
  
  # Check if the categories information is retrieved successfully
  
  # Example: Verify if the 'cat_info' object is created and contains categories information
  expect_true(exists("cat_info") && length(cat_info) > 0)
  
  # Add more assertions to test other aspects of categories information retrieval
  
  # Close the app
  app$stop()
})
