# Marinating the meat

1. Start an R session in this directory (`05-custom`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Create a new file named `steps.R` in the `R` subdirectory
1. Implement the `marinate()` function in this file:
    ```r
    marinate <- function(what) {
      Sys.sleep(60) # needs some time
      structure("marinated meat", class = "food", input = list(what))
    }
    ```
1. Test it in your local R session:
    ```r
    requireNamespace("cooking")
    source("R/steps.R")
    marinate(I("raw meat"))
    ```
1. Let `remake` know the location of your source files by adding the following
   at the top or bottom of your `remake.yml` file:
    ```
    sources:
    - R/*
    
    ```
1. Use marinated meat instead of raw meat for frying.
