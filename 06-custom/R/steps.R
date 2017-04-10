marinate <- function(what) {
  message("Marinating, please wait...")
  Sys.sleep(60) # needs some time
  structure("marinated meat", class = "food", input = list(what))
}
