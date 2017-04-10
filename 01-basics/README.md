# The basics

1. Start an R session in this directory (`01-basics`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project with `remake::make()`
1. Observe the output
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Build the project with `remake::make()` again. How has the output changed?
1. Fetch the ragout again. Has it changed?
1. Locate the hidden `.remake` directory in this directory
    - Don't look inside, you have been warned
        - No harm will be done to your computer if you look anyway
1. Delete it (perhaps in your R session with `unlink(".remake", recursive = TRUE)`
1. Build the project again. Why are all targets rebuilt?
1. Fetch the ragout again. Has it changed?
