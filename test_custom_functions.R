library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for custom functions
test_that("Custom functions test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test custom functions
  
  # Check if the custom plot functions are loaded correctly
  
  # Example: Verify if the plot function plot_fungi_fun() is available
  expect_true("plot_fungi_fun" %in% ls("package:your_package_name"))
  
  # Add more assertions to test other custom functions
  
  # Close the app
  app$stop()
})
