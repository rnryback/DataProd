library(shiny)
library(datasets)
library(ggplot2)

shinyServer(function(input, output) {
    
        datasetInput <- reactive({
                switch(input$dataset,
                       "Orange" = Orange,
                       "Tree" = trees,
                       "Iris" = iris)
        })
      
        output$caption <- renderText({
                input$caption
        })
        output$summary <- renderPrint({
                dataset <- datasetInput()
                summary(dataset)
        })
      
        output$view <- renderTable({
                head(datasetInput(), n = input$obs)
                
                 
        })
})