
library(shiny)
library(ggplot2)

shinyServer(function(input, output){
    
    output$densityplot<-renderPlot({set.seed(1)
        CL<-NULL
        if(input$sIn=="Uniform"){
        for (i in 1:input$nIn2) {
            CL<-append(CL,(mean(runif(input$nIn1))))  
        }
        }else if(input$sIn=="Exponential"){
            for (i in 1:input$nIn2) {
                CL<-append(CL,(mean(rexp(input$nIn1))))  
            }
        }else if(input$sIn=="Normal"){
            for (i in 1:input$nIn2) {
                CL<-append(CL,(mean(rnorm(input$nIn1))))  
            }
        }
        ggplot(NULL,aes(x=CL))+
            geom_density(color="darkblue", fill="lightblue",xlab="Xbar",ylab="Density")
    })
    
    })

