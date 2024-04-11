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
  
  # Test the styling of specific UI elements
  
  # Test the header styling
  expect_true(app$eval("_selenium.findElement(By.id('logo')).style.paddingTop == '5px'"))
  expect_true(app$eval("_selenium.findElement(By.id('logo')).style.cursor == 'pointer'"))
  
  # Test the sidebar styling
  expect_true(app$eval("_selenium.findElement(By.id('sidebar')).className == 'sidebar'"))
  
  # You can continue testing other layout styling elements similarly
  
  # Close the app
  app$stop()
})
