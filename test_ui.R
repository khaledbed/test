library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for the UI components
test_that("UI test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setWindowSize(1200, 800)  # Adjust window size as needed
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test the title and logo
  expect_equal(app$getTitle(), "FungiFun3")
  expect_true(app$isVisible(css = "#logo"))
  
  # Test the header links
  app$click(selector = "a[href='https://www.leibniz-hki.de/en/']", method = "css")
  app$switchToWindow("leibniz-hki_window")
  expect_true(app$getTitle() %like% "Leibniz-HKI")
  app$closeWindow()
  
  app$click(selector = "a[href='https://www.funginet.de/home.html']", method = "css")
  app$switchToWindow("funginet_window")
  expect_true(app$getTitle() %like% "Funginet")
  app$closeWindow()
  
  # Test sidebar navigation
  app$click(selector = "a[data-value='fe']", method = "css")
  expect_true(app$isVisible(css = ".tab-content #fe"))
  
  app$click(selector = "a[data-value='gsea']", method = "css")
  expect_true(app$isVisible(css = ".tab-content #gsea"))
  
  # Close the app
  app$stop()
})
