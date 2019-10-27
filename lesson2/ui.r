library(shiny)
shinyUI(fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      h1("Installation"),
      div("Shiny is available on CRAN ..."),
      code("install.package('shiny')"),
      img(src="bigorb.png", width=50, height=50)
    ),
    mainPanel(
      h1("Introducing shiny"),
      div("Shiny is a new ..."),
      a("Shiny homepage", href="http://example.com"),
      tags$ul(
        tags$li("a")
      )
    )
  )
))