library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for responsive design
test_that("Responsive design test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setWindowSize(1200, 800)  # Set an initial window size
  
  # Test the layout at different screen sizes
  
  # Test for large screen size
  app$setWindowSize(1200, 800)
  # Write assertions to verify layout for large screens
  
  # Test for medium screen size
  app$setWindowSize(992, 800)
  # Write assertions to verify layout for medium screens
  
  # Test for small screen size
  app$setWindowSize(768, 800)
  # Write assertions to verify layout for small screens
  
  # Close the app
  app$stop()
})
