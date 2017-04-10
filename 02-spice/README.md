# Adding spice

1. Start an R session in this directory (`02-spice`)
1. Run `remake::make()` 
1. Grab the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Edit `remake.yml` to spice up the frying step with any spice of your choice, like this:
    ```
      fried_meat:
        command: fry(chopped_meat, with = I(c("oil", "pepper")))
    ```
2. Run `remake::make()`
1. Grab the updated ragout:
    ```r
    remake::fetch("ragout")
    ```
1. What has changed?

