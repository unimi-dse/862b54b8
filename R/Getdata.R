#'Acquisition of data
#'
#'@description this function permits the users to get the data from a csv file stored in the folder "inst/extdata".
#'Putting this function into the shiny app, it will get the data needed for the package.
#'@example getData()
#'
#'@export


getData <- function(){
  data <- read.csv(system.file("extdata", "Provadue.csv", package = "ExpenditureEducation"), sep = ";")
  return(data)
}
