library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Finance Calculator"),
        
        sidebarPanel(
                p('Enter your starting capital you want to invest, the time you want invest it as well as the average interest rate.
                    '),
                h3("Initial capital"),
                numericInput('capital', label='Dollars',0),
                h3("Time"),
                numericInput('years', label='years',0),
                h3("Interest rate per year"),
                numericInput('rate', label='%',0)
        ),
        mainPanel(
                h3("Future capital "),
                p('Given the data your future capital will be (in Dollars)'),
                verbatimTextOutput("prediction")
        )
))