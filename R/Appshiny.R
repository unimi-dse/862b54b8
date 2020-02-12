#'ExpenditureEducation
#'
#'@description
#'This function permits to the user to launch the shiny app.
#'Through this app, there will be printed out three different graphs, depending on the choice of the user. User, in fact, can choose three different years and according to them, shiny will run a different plot for the countries in consideration.
#'@return shiny app
#'
#'
#'@export


ExpEdu <- function (){
  shiny::runApp(system.file("App", package = "ExpenditureEducation"), launch.browser = T)
}
