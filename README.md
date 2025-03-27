## **Tests**  

Output screenshots for the easy and medium tests have been added to their respective folders. For the hard test, a screenshot showing the function being loaded and executed has been included.

### **Easy Test: Using `grep()` in R**  

Count rows that match `"VS"` in the `diamonds` dataset:  

```r
library(ggplot2)
library(data.table)

data(diamonds)

mr <- grep("VS", diamonds$clarity)
count <- length(mr)

print(count)
```

### **Medium Test: Using `fread(cmd = "grep")`**  

Count matching rows by integrating `grep` with `fread()`:  

```r
library(data.table)

fwrite(diamonds, "diamonds.csv")

filtered_data <- fread(cmd = "grep 'VS' diamonds.csv")
count <- nrow(filtered_data)

print(count)
```

### **Hard Test: Package Development**  

The `hard-test/grepreaperTest` directory contains an R package with:  

- **Core functions** (`R/grep_count.R`)  
- **Unit tests** (`tests/testthat/test-grep_count.R`)  
- **Vignettes** (`vignettes/grepreaperTest.Rmd`)

### **Installation**  

To install the package from this repository, use:  

```r
devtools::install_github("vai-man/grepreaper-dev", subdir = "hard-test/grepreaperTest", build_vignettes = TRUE)
```

After installation, load the package:  

```r
library(grepreaperTest)
```

To build and check the package:  

```r
devtools::document()
devtools::test()
devtools::check()
devtools::build_vignettes()
devtools::install()
```

---

## **Project Background**  

This package is part of an initiative to develop `grepreaper`, an R package designed for efficient file reading through `grep`. While R provides built-in tools for file reading, `grepreaperTest` introduces enhanced capabilities, including:  

- **`grep.count`**: Count matching records across multiple files.  
- **`grep.read`**: Read and aggregate data based on pattern matching.  

These functions help users efficiently filter and process large datasets without requiring direct command-line interaction.  

---

## **Mentors**  

- **David Shilane**  
  - Author of multiple R packages, including **formulaic, getDTeval, DTwrappers, simitation, nRegression, tvtools**  

- **Toby Dylan Hocking**  
  - Contributor with over a decade of experience in R GSoC  

---
