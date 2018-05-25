library(shiny)
library(streamR)
ui <- fluidPage(
  titlePanel("title panel"),

    mainPanel(tableOutput("tweets"))
)
server <- function(input, output) {
df <- parseTweets('tweets.json')
  
  output$tweets <- renderTable({df})
  
}
shinyApp(ui,server)
