library(shinytest)

# Define the URL of the deployed FungiFun3 app
app_url <- "https://fungifun3.hki-jena.de/"

# Define a test for database connection
test_that("Database connection test for FungiFun3", {
  
  # Launch the app in a browser window
  app <- ShinyDriver$new(url = app_url, browser = "chrome")
  
  # Wait for the app to load
  app$setImplicitWaitTimeout(10000)  # Adjust timeout as needed
  
  # Test database connection
  
  # Check if the database connection is established
  
  # Example: Verify if the 'db' object is created and connected to the database
  expect_true(exists("db") && class(db) == "MySQLConnection" && dbIsValid(db))
  
  # Add more assertions to test other aspects of the database connection
  
  # Close the app
  app$stop()
})
