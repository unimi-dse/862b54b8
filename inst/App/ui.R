ui <-fluidPage(
    titlePanel("Expenditure for education in Italy and its neighbours"),
    sidebarLayout(
        sidebarPanel(
            radioButtons("button", "Select year:",
                         c("2014" = 2,
                           "2015" = 3,
                           "2016" = 4))

        ),
        mainPanel(
            textOutput("output"),
            plotly::plotlyOutput("plot")
        )


    )
)

