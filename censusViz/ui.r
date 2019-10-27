library(shiny)

shinyUI(fluidPage(
  titlePanel("censusViz"),
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
        information from the 2010 US Census."),
      selectInput("var", label = "Choose a variable to display", 
                  choices = c("Percent White",
                              "Percent Balck",
                              "Percent Hispanic",
                              "Percent Asian")),
      sliderInput("range", label = "Range of interest", min = 0, max = 100, value = c(10, 90))
    ),
    mainPanel(textOutput("text1"))
  )
))
