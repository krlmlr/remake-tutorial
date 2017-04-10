marinate <- function(what, time = 60) {
  message("Marinating for ", time, " seconds, please wait...")
  Sys.sleep(time)
  structure("marinated meat", class = "food", input = list(what))
}
