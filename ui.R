# @title  : Coursera - Developing Data Products - Final Project
# @author: Sagar Pathak
# @date  : 2016-03-28

# @desc: 
#      This is a temperature converter, which currently works for the converion of 
#      Celsius to Fahrenheit and vice versa. 

library(shiny)
shinyUI(fluidPage(
  titlePanel("Temperature Converter"),
  sidebarLayout(
    sidebarPanel(
      helpText('Please enter the information below.'),
      fluidRow(
        column(12,
               radioButtons("choice", label = h3("Convert temperature from"),
                            choices = list("Celsius to Fahrenheit" = 1, "Fahrenheit to Celsius" = 2),selected = 1))
      ),
      fluidRow(
        column(12, 
               textInput('temp', label = textOutput('temperatureText'), 
                         value = "", placeholder = "36"))
      ),
      actionButton("convert", label = "Convert")
    ),
    mainPanel(
      h2(textOutput("result"))
    )
  ))
)