# Writing a report

1. Start an R session in this directory (`07-knitr`)
    - RStudio users, open the `*.Rproj` file in this directory

1. Build the project:
    ```r
    remake::make()
    ```
1. Fetch the ragout:
    ```r
    remake::fetch("ragout")
    ```
1. Create a new file `final.Rmd` in this directory, with the following contents:
    ``````
    ---
    title: "Final cooking report"
    author: "<Your name>"
    output: rmarkdown::html_document
    ---
    
    ```{r init, echo = FALSE, message = FALSE}
    if (!isNamespaceLoaded("remake")) remake::create_bindings()
    ```
    
    Look at the ragout I made today:
    
    ```{r}
    ragout
    ```
    
    I combined fried meat and vegetables:
    
    ```{r}
    fried_meat
    cooked_potatoes
    peeled_carrots
    ```
    
    Some of the components were more difficult to prepare than others:
    
    ```{r}
    plot(
      factor(c("Fried meat", "Cooked potatoes", "Peeled carrots")),
      sapply(
        list(fried_meat, cooked_potatoes, peeled_carrots),
        function(x) length(format(x))
      )
    )
    ```
    ``````
1. Render the document using `rmarkdown::render("final.Rmd")`, preferably in a fresh R session.
    - RStudio users can hit Ctrl+Shift+K when `final.Rmd` is open
1. View the resulting `final.html` in your browser.
1. Create a file `R/knit.R` with the following contents:
    ```r
    knit_with_deps <- function(target_name, source_name, ..., envir = parent.frame()) {
      dep_names <- as.character(unlist(substitute(list(...))[-1]))
      deps <- list(...)
      names(deps) <- dep_names
      deps <- deps[unique(names(deps))]
    
      dep_env <- as.environment(deps)
      parent.env(dep_env) <- envir
    
      rmarkdown::render(
        input = source_name,
        output_format = "all", envir = dep_env
      )
    }
    ```
1. Add the following rule to your `targets` in `remake.yml`:
    ```
      final.html:
        command: knit_with_deps(target_name, "final.Rmd", ragout, peeled_carrots, cooked_potatoes, fried_meat)
    ```
1. Make sure the `final.html` target is part of the main target!
    ```
    targets:
      all:
        depends:
        - ragout
        - final.html
    ```

1. Build the project.
1. View the resulting `final.html` in your browser, again.
