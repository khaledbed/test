library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for layout styling
test_that("Layout styling test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setWindowSize(1200, 800)  # Adjust window size as needed
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Navigate to different tabs and check layout styling
  
  # Example: Check styling of the header
  header_logo <- app$findElement("css", "#logo")
  expect_true(header_logo$isDisplayed())
  expect_true(header_logo$getElementAttribute("style") == "padding-top: 5px; cursor:pointer;")
  
  # Example: Check styling of the sidebar
  sidebar <- app$findElement("css", "#sidebar")
  expect_true(sidebar$isDisplayed())
  expect_true(sidebar$getElementAttribute("class") == "sidebar")
  

  # Close the app
  app$stop()
})
