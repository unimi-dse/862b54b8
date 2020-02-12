getData <- function(){
  data <- read.csv(system.file("extdata", "Provadue.csv", package = "ExpenditureEducation"), sep = ";")
  return(data)
}
