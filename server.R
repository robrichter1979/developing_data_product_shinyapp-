library(shiny)
outcome <-function(capital, years, rate) capital*(1+rate/100)^years 
shinyServer(
    function(input, output){
        output$prediction <- renderPrint({outcome(input$capital, input$years, input$rate)})
    }
                )
