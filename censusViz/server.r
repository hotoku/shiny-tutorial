library(shiny)
shinyServer(function(input, output){
  output$text1 <- renderText(
    paste("you have selected ", input$var)
  )
})
