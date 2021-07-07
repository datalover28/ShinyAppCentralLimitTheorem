
library(shiny)
library(ggplot2)


shinyUI(fluidPage(

 
    titlePanel("Central Limit Theorem"),

  
    sidebarLayout(
        sidebarPanel(
        h2("Inputs performing CLT"),
        selectInput("sIn","Distribution",choices = c("Uniform","Exponential","Normal")),
        h5("Put n=1 to see plot of that distribution"),
         sliderInput("nIn1","Sample Size (n)",value = 1,1,10000),
         sliderInput("nIn2","No of simulations for sample size",value = 5000,100,10000)
        ),

     
        mainPanel(
            h2("Density Plot of Xbar with sample size n"),
            plotOutput("densityplot")
        )
    )
))
