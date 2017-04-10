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
