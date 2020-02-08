
server <-function(input, output){
    data <- read.csv("https://github.com/unimi-dse/862b54b8/blob/master/inst/extdata/Provadue.csv", sep = ";")

    output$output <- renderText(paste(input$button))

    output$plot <- renderPlotly({

        id <- as.integer(input$button)

        plot <- plot_ly(x = data$Country.Name, y = data[,id],
                       type = "bar", marker = list(colour = "rgb(49,130,189)")



        )


    })

}
