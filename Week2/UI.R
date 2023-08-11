#This is the UI file
library(shiny)
ui <- fluidPage(
  selectInput("select", h3("Symptoms"), choices = list("Gum Rot" = 1, "Skin Sores" = 2,
      "Knee Weakness" = 3, "Lassitude" = 4)),
  div(style = "border:1px black solid;width:50%", plotOutput("drugs"))
)
