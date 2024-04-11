library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for the Functional Enrichment tab
test_that("Functional Enrichment tab test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setWindowSize(1200, 800)  # Adjust window size as needed
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Navigate to the Functional Enrichment tab
  app$click(selector = "a[data-value='fe']", method = "css")
  
  # Test the content of the Functional Enrichment tab
  expect_true(app$isVisible(css = ".tab-content #fe"))
  expect_true(app$isVisible(css = "h1:contains('Functional enrichment')"))

    
  # Close the app
  app$stop()
})
