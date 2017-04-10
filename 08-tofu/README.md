# A tofu ragout

1. Start an R session in this directory (`08-tofu`)
    - RStudio users, open the `*.Rproj` file in this directory
1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Prepare a tofu ragout *in addition to* the meat ragout:

    ![new rules](detailed-parallel.png)
    
    - Buy the raw tofu from the local market
    - Don't marinate it (because we don't know how to marinate tofu yet)
        - You could also implement `marinate_tofu()`

    - Reuse the vegetables from the meat ragout for the tofu ragout
    - Add spice to your taste
    - Hint: Some copy-pasting may be required.

1. Make sure the `tofu_ragout` target is part of the main target!
    ```
    targets:
      all:
        depends:
        - ragout
        - tofu_ragout
    ```

1. Build the project, fetch the tofu ragout. The meat ragout is not recreated as part of this process (surprise!).
