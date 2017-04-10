# Marinating the meat

1. Start an R session in this directory (`05-custom`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Create a new file with `.R` extension (name doesn't matter)
1. Save it to the `R` subdirectory
1. Implement the `marinate()` function:
    ```r
    marinate <- function(what) {
      requireNamespace("cooking")
      structure("marinated meat", class = "food", input = list(what))
    }
    ```
1. Test it in your local R session:
    ```r
    marinate(I("raw meat"))
    ```
1. Let `remake` know the location of your source files by adding the following
   at the top or bottom of your `remake.yml` file:
    ```
    sources:
    - R/*
    
    ```
1. Use marinated meat instead of raw meat for frying.
