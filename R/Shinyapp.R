#' Shiny app ue an interactive interface to show the expenditure in education in Italy and its closest countries.
#'
#'The function goes without arguments
#'
#'


Eduexp <- function (){
  shiny::runApp(system.file("App", package = "midterm"), launch.browser = T)
}
