# Where to buy?

1. Start an R session in this directory (`04-supermarket`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Add rules to buy the raw ingredients from the supermarket,
  instead of reading them from a file:
    
    ![new rules](full.png)
    
    - Use the call `buy(I("carrots"))` to buy carrots
    - Define the `raw_potatoes` target to be the result of buying potatoes from the supermarket
    - Consider buying the meat at the butcher's instead
        - `buy(I("meat"), I("the butcher's"))`
    - Use the new targets instead of the input `.txt` filenames in the existing calls to `chop()` and `peel()`
1. Build the project. Why is the meat not marinated anymore?
    - Hint: Fetch the intermediate target `raw_meat`
