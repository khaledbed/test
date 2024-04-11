library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for cross-browser compatibility
test_that("Cross-browser compatibility test for FungiFun3", {
  
  # Define a list of browsers to test
  browsers <- c("chrome", "firefox", "internet explorer", "edge")
  
  # Loop through each browser and perform the test
  for (browser in browsers) {
    
    # Launch the app in the current browser
    app <- ShinyDriver$new(url = app_url, browser = browser)
    
    # Wait for the app to load
    app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
    
    # Test the functionality or layout of the app in the current browser
    
    # Example: Verify the presence of a specific UI element
    expect_true(app$isVisible(css = ".navbar-brand"))
    
    # Close the app
    app$stop()
  }
})
