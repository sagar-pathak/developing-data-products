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
      h4("Documentation"),
      HTML("This application consists of three input elements, <br/> 1. Radio button (to get the user choice of conversion<br/>2. Input Box (to get the value of temperature)<br/> 3. Submit button (To process the conversion in server so that it will display the result.)<br/>"),
      HTML("Enter the information below to start with this application.")
      ),
    mainPanel()
  ),
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