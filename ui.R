shinyUI(pageWithSidebar(
        headerPanel("Assignment simple Shiny App"),
        sidebarPanel(
                textInput("caption", "Enter text here to see it on the right:", "Data Summary"),
                selectInput("dataset", "Choose your favourite dataset:",
                            choices = c("Orange", "Tree", "Iris")),
                numericInput("obs", "Number of observations to display:", 10)
        ),
        
        mainPanel(
                h3(textOutput("caption")),
                verbatimTextOutput("summary"),
                tableOutput("view")
        )
))