# @title  : Coursera - Developing Data Products - Final Project
# @author: Sagar Pathak
# @date  : 2016-03-28

# @desc: 
#      This is a temperature converter, which currently works for the converion of 
#      Celsius to Fahrenheit and vice versa. 

celsiusToFahrenheit<- function(celsius){
  (9.0 / 5.0) * celsius + 32.0;
}

farenheitToCelsius<- function(fahrenheit){
  (5.0/9.0) * (fahrenheit-32.0)
}

shinyServer(
  function(input, output) {
    output$temperatureText <- renderText({
      if(input$choice == 1){
        temp <- "Celsius"
      }else{
        temp <- "Fahrenheit"
      }
      paste("Enter temperature in ",temp, "(degree)")
    })
    
    result <- eventReactive(input$convert, {
      input$temperature
      temp <- as.numeric(input$temp)
      if(input$choice == 1){
        f <- celsiusToFahrenheit(temp)
        paste(temp, 'degree Celsius is = ',f, ' degree Fahrenheit')
      }else{
        c <- farenheitToCelsius(temp)
        paste(temp, 'degree Fahrenheit is = ',c, ' degree Celsius')
      }
    })
    
    output$result <- renderText({
      result()
    })
  }
)