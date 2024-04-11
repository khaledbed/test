# Load necessary libraries
library(testthat)

# Source your R script containing the functional enrichment code
source("server.R")

# Define test cases
test_that("Functional Enrichment Tests", {
  
  # Test loading input IDs by typing in IDs
  test_that("Test input IDs by typing in IDs", {
    input_ids <- c("ID1", "ID2", "ID3")
    expected_output <- c("ID1", "ID2", "ID3")
    actual_output <- get_input_ids_by_typing(input_ids)
    expect_equal(actual_output, expected_output)
  })
  
  # Test loading input IDs by uploading an Excel file
  test_that("Test uploading input IDs from Excel file", {
    file_path <- "test_input_ids.xlsx"
    expected_output <- c("ID4", "ID5", "ID6")
    actual_output <- get_input_ids_from_excel(file_path)
    expect_equal(actual_output, expected_output)
  })
  
  # Test using the whole database for background gene IDs
  test_that("Test using the whole database for background gene IDs", {
    expected_output <- "all_database"
    actual_output <- get_background_gene_ids_whole_database()
    expect_equal(actual_output, expected_output)
  })
  
  # Test using custom background gene IDs by typing in IDs
  test_that("Test using custom background gene IDs by typing in IDs", {
    bg_ids <- c("BG1", "BG2", "BG3")
    expected_output <- c("BG1", "BG2", "BG3")
    actual_output <- get_custom_background_gene_ids_by_typing(bg_ids)
    expect_equal(actual_output, expected_output)
  })
  
  # Test using custom background gene IDs by uploading an Excel file
  test_that("Test using custom background gene IDs by uploading an Excel file", {
    file_path <- "test_bg_ids.xlsx"
    expected_output <- c("BG4", "BG5", "BG6")
    actual_output <- get_custom_background_gene_ids_from_excel(file_path)
    expect_equal(actual_output, expected_output)
  })
  
  # Test different significance level (p-value) cutoffs
  test_that("Test different significance level (p-value) cutoffs", {
    pval_cutoff <- 0.05
    expected_output <- 0.05
    actual_output <- get_pval_cutoff()
    expect_equal(actual_output, expected_output)
  })
  
  # Test different significance tests (hypergeometric or Fisher's exact test)
  test_that("Test different significance tests", {
    signif_test <- "hypergeo_test"
    expected_output <- "hypergeo_test"
    actual_output <- get_significance_test()
    expect_equal(actual_output, expected_output)
  })
  
  # Test different gene to category associations
  test_that("Test different gene to category associations", {
    gene_to_cat <- "enr_over"
    expected_output <- "enr_over"
    actual_output <- get_gene_to_category_association()
    expect_equal(actual_output, expected_output)
  })
  
  # Test different p-value adjustment methods
  test_that("Test different p-value adjustment methods", {
    adj_method <- "BH"
    expected_output <- "BH"
    actual_output <- get_pval_adjustment_method()
    expect_equal(actual_output, expected_output)
  })
  
  # Test different annotation types
  test_that("Test different annotation types", {
    anno_type <- "direct"
    expected_output <- "direct"
    actual_output <- get_annotation_type()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the option to use only directly annotated associations
  test_that("Test using only directly annotated associations", {
    expected_output <- TRUE
    actual_output <- use_only_directly_annotated()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the table for all genes selected for a specific species and ontology
  test_that("Test the table for all genes selected for a specific species and ontology", {
    expected_output <- "expected_table_data"
    actual_output <- get_genes_table()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the calculation of selected genes per category
  test_that("Test the calculation of selected genes per category", {
    expected_output <- "expected_selected_genes_per_category"
    actual_output <- calculate_selected_genes_per_category()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the calculation of background genes per category
  test_that("Test the calculation of background genes per category", {
    expected_output <- "expected_background_genes_per_category"
    actual_output <- calculate_background_genes_per_category()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the calculation of total selected genes
  test_that("Test the calculation of total selected genes", {
    expected_output <- 100
    actual_output <- calculate_total_selected_genes()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the calculation of total background genes
  test_that("Test the calculation of total background genes", {
    expected_output <- 500
    actual_output <- calculate_total_background_genes()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the hypergeometric statistical test
  test_that("Test the hypergeometric statistical test", {
    expected_output <- "expected_hypergeo_test_result"
    actual_output <- run_hypergeometric_test()
    expect_equal(actual_output, expected_output)
  })
  
  # Test Fisher's exact test
  test_that("Test Fisher's exact test", {
    expected_output <- "expected_fishers_test_result"
    actual_output <- run_fishers_exact_test()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the calculation of adjusted p-values
  test_that("Test the calculation of adjusted p-values", {
    expected_output <- "expected_adjusted_pvalues"
    actual_output <- calculate_adjusted_pvalues()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the generation of the result table
  test_that("Test the generation of the result table", {
    expected_output <- "expected_result_table"
    actual_output <- generate_result_table()
    expect_equal(actual_output, expected_output)
  })
  
  # Test the generation of the total categories barplot
  test_that("Test the generation of the total categories barplot", {
    expected_output <- "expected_total_categories_barplot"
    actual_output <- generate_total_categories_barplot()
    expect_equal(actual_output, expected_output)
  })
  
})

# Run the tests
test_results <- test_file("server.R")
print(test_results)
