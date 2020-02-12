#'UI for application
#'

shiny::shinyUI (
    fluidPage(
        titlePanel("Expenditure for education in Italy and its neighbours"),
        sidebarLayout(
            #siderbar panel#
            sidebarPanel(
                #radio buttons for choosing the year#
                radioButtons("button", "Select year:",
                             c("2014" = 2,
                               "2015" = 3,
                               "2016" = 4))

            ),
            #main panel#
            mainPanel(
                #Text output that display the histogram for that year#
                textOutput("output"),
                #Display the plot#
                plotly::plotlyOutput("plot")
            )


        )
    )
)

