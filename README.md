# remake tutorial

Please see the README files in the individual subdirectories.

## Prerequisites

```r
install.packages("remotes") # if not yet installed
remotes::install_github(c("richfitz/remake", "krlmlr/cooking"))
```

## Test

Run in a fresh R session, this should complete without error:

```r
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
```

## Contents

1. The basics: [01-basics](01-basics)
