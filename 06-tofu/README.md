# A tofu ragout

1. Start an R session in this directory (`06-tofu`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Create a new file named `steps.R` in the `R` subdirectory
1. Implement the `marinate()` function in this file:
    ```r
    marinate <- function(what) {
      message("Marinating, please wait...")
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
    - Impatient RStudio users can abort by pressing "Esc"
1. Let `remake` know the location of your source files by adding the following
   at the top or bottom of your `remake.yml` file:
    ```
    sources:
    - R/*
    
    ```
1. Use marinated meat instead of raw meat for frying.
    - Hint: You need to define a new target and change an existing rule
