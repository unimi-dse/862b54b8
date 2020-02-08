
server <-function(input, output){
    data <- read.csv("C:\\Users\\mw\\Desktop\\midterm\\Data\\Provadue.csv", sep = ";")

    output$output <- renderText(paste(input$button))

    output$plot <- renderPlotly({

        id <- as.integer(input$button)

        plot <- plot_ly(x = data$Country.Name, y = data[,id],
                       type = "bar", marker = list(colour = "rgb(49,130,189)")


        )


    })

}
