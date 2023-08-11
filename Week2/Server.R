library(shiny)
library(ggplot2)
#This is the server file
scurvy <- read.csv("scurvy.csv", header=TRUE, sep=",")
server <- function(input, output) {
  output$drugs <- renderPlot({
    if (input$select == 1) {
      toPlot <- scurvy$gum_rot_d6
    } else {
      toPlot <- scurvy$skin_sores_d6
    }
    
    print(toPlot)
    
    
    #map the treatment to the disease --> you choose the symptom and plots
    #the treatment
    
    p <- ggplot(scurvy, aes(x = treatment,y=toPlot))
  p + geom_bar(stat = "summary", fun = "mean")
  })
  
  
}
