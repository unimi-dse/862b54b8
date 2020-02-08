
shiny::shinyServer(function(input, output){
    data <- read.csv(system.file("extdata", "Provadue.csv", package = "midterm"), sep = ";")

    output$output <- shiny::renderText(paste(input$button))

    output$plot <- plotly::renderPlotly({

        id <- as.integer(input$button)

        plot <- plotly::plot_ly(x = data$Country.Name, y = data[,id],
                       type = "bar", marker = list(colour = "rgb(49,130,189)")


        )


    })

})
