# Marinating the meat

1. Start an R session in this directory (`06-custom`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Let `remake` know the location of your source files by adding the following
   at the top or bottom of your `remake.yml` file:
    ```
    sources:
    - R/*
    
    ```
1. Use marinated meat instead of raw meat for frying, using the default setting for the `time` argument.
    - Hint: You need to add a new target and change an existing rule.

1. Build the project, wait for the marination to complete.
1. Build the project again. Why is this so much faster now?
