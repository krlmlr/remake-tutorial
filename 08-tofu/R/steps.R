marinate <- function(what, time = 5) {
  message("Marinating for ", time, " seconds, please wait...")
  Sys.sleep(time)
  structure("marinated meat", class = "food", input = list(what))
}
