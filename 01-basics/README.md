# The basics

1. Start an R session in this directory (`01-basics`)
1. Run `remake::make()`
1. Observe the output
1. Run `remake::make()` again. How has the output changed?
1. Modify `raw_meat.csv` in this directory (contents don't matter)
1. Run `remake::make()` again. How has the output changed?
    - Why is the `fried_meat` target not rebuilt?
1. Run `remake::make()` again. What has changed?
1. Locate the hidden `.remake` directory in this directory
    - Don't look inside, you have been warned
        - No harm will be done to your computer if you look anyway
1. Delete it (perhaps in your R session with `unlink(".remake", recursive = TRUE)`
1. Run `remake::make()` again. Why are all targets rebuilt?
