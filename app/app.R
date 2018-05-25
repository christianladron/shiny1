library(shiny)
library(streamR)
ui <- fluidPage(
  titlePanel("title panel"),

    mainPanel(tableOutput("tweets"))
)
server <- function(input, output) {
df <- parseTweets('tweets.json')
  
  output$selected_var <- renderText({ 
    input$textin
  })
  output$tweets <- renderTable({df$text})
  
}
shinyApp(ui,server)
