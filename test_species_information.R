library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for species information retrieval
test_that("Species information retrieval test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test species information retrieval
  
  # Check if the species information is retrieved successfully
  
  # Example: Verify if the 'sp_info' object is created and contains species information
  expect_true(exists("sp_info") && nrow(sp_info) > 0)
  
  # Add more assertions to test other aspects of species information retrieval
  
  # Close the app
  app$stop()
})
