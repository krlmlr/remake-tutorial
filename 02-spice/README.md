# Adding spice

1. Start an R session in this directory (`02-spice`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project with `remake::make()`
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Edit `remake.yml` to spice up the frying rule with any spice of your choice, like this:
    ```
      fried_meat:
        command: fry(chopped_meat, with = I(c("oil", "pepper")))
    ```
1. Build the project
1. Fetch the updated ragout:
    ```r
    remake::fetch("ragout")
    ```
    
    What has changed?
