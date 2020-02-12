shiny::shinyServer(function(input, output){
    data <- getData()

    output$output <- shiny::renderText(paste(input$button))

    output$plot <- plotly::renderPlotly({

        id <- as.integer(input$button)

        plot <- plotly::layout(xaxis= list(title = "Countries"), yaxis = list(title = "Billions of dollars"),
                               plotly::plot_ly(x = data$Country.Name, y = data[,id],
                                               type = "bar", marker = list(colour = "rgb(49,130,189)")))


    })

})

