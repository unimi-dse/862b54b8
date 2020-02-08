#'Import data from the World bank database.
#'
#'This function returns the data of the Expenditure in education of all countries all over the world.
#'Data source : https://data.worldbank.org/indicator/SE.XPD.TOTL.GD.ZS
#'
#'


importData <- function() {
  data<-read.csv(system.file("extdata", "Provadue.csv", package="midterm"),sep=";")
  return(data)
}
