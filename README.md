
<!-- README.md is generated from README.Rmd. Please edit that file -->
remake tutorial <https://goo.gl/fnUyVk>
=======================================

1.  [The basics](01-basics#readme)
2.  [Adding spice](02-spice#readme)
3.  [How to prepare vegetables?](03-vegetables#readme)
4.  [Where to buy?](04-supermarket#readme)
5.  [Working with `remake` projects](05-editing#readme)
6.  [Marinating the meat](06-custom#readme)
7.  [Reporting](07-knitr#readme)
8.  [A tofu ragout](08-tofu#readme)
9.  [Further steps](09-freeride#readme)

Prerequisites
-------------

``` r
install.packages("remotes") # if not yet installed
remotes::install_github(c("richfitz/remake", "krlmlr/cooking"))
install.packages("rmarkdown") # optionally, for the "Reporting" exercise
```

Test
----

Run in a fresh R session, this should complete without error:

``` r
test <- function() {
  temp_dir <- tempfile()
  dir.create(temp_dir)
  old <- setwd(temp_dir)
  on.exit(setwd(old))
  writeLines(
    c(
      "packages:", "- cooking", "targets:", "  all:", "    depends: chopped_meat",
      "  chopped_meat:", "    command: chop(I('raw_meat.csv'))"
    ),
    "remake.yml"
  )
  remake::make()
}

test()
#> [  LOAD ]
#> [  READ ]              |  # loading sources
#> <  MAKE > all
#> [ BUILD ] chopped_meat |  chopped_meat <- chop("raw_meat.csv")
#> [  READ ]              |  # loading packages
#> [ ----- ] all
```
