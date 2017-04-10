# Adding spice

1. Start an R session in this directory (`02-spice`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Modify `raw_meat.txt` in this directory
    - Change the contents to `<adjective> meat`, e.g., `marinated meat`
1. Build the project again. How has the output changed?
    - If nothing changes, check that you have the latest version of the [`cooking` package](https://github.com/krlmlr/cooking#readme) installed
1. Fetch the ragout again. Has it changed?
1. Modify `raw_meat.txt` in this directory again
    - Add a second line with arbitrary contents, e.g., `from supermarket`
1. Build the project again. How has the output changed?
    - Why is the `fried_meat` target not rebuilt?

        - Hint: Run `cooking::chop("raw_meat.txt")` in your R session

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
