library(shiny)
library(maps)
library(mapproj)
library(stringr)
source("helpers.r")

counties <- readRDS("data/counties.rds")
get_column <- function(var){
  str_split(var, " ")[[1]][2] %>% tolower()
}

shinyServer(function(input, output){  
  output$map <- renderPlot(
    percent_map(counties[,get_column(input$var)],
                min = input$range[1],
                max = input$range[2],
                color = "green",
                legend.title = "census")
    )
})
