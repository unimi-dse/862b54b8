#' Shiny app server

shiny::shinyServer(function(input, output){

    #Acquire data from csv file through the function getData()#
    data <- getDataset()

    #Print input on the main panel#
    output$output <- shiny::renderText(paste(input$button))

    #Print graphs on main panel#
    output$plot <- plotly::renderPlotly({

        id <- as.integer(input$button)

        plot <- plotly::layout(xaxis= list(title = "Countries"), yaxis = list(title = "Billions of dollars"),
                               plotly::plot_ly(x = data$Country.Name, y = data[,id],
                                               type = "bar", marker = list(colour = "rgb(49,130,189)")))


    })

})

