library(shiny)

#server.R

shinyServer(
  function(input, output) {
  
    output$text1 <- renderText({ 
      if ( input$radio1==1 & input$radio2==1) {
        mpg <- 33.0937 -3.1496 * input$slider1
        paste("Expected MPG is", mpg)
    } else if ( input$radio1==1 & input$radio2==2) {
        mpg <- 29.6464 -3.1496 * input$slider1
        paste("Expected MPG is", mpg)
    } else if ( input$radio1==1 & input$radio2==3) {
        mpg <- 27.8246 -3.1496 * input$slider1
        paste("Expected MPG is", mpg)
    } else if ( input$radio1==2 & input$radio2==1) {
        mpg <- 33.7536 -3.1496 * input$slider1
        paste("Expected MPG is", mpg)
    } else if ( input$radio1==2 & input$radio2==2) {
        mpg <- 29.4963 -3.1496 * input$slider1
        paste("Expected MPG is", mpg) 
    } else
        mpg <- 27.6745 -3.1496 * input$slider1
        paste("Expected MPG is", mpg)
    })
    
  }
)

# if ( input$radio1==1 AND input$radio2==1) {
   # mpg <- 33.0937 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg)
# } else if ( input$radio1==1 AND input$radio2==2) {
   # mpg <- 29.6464 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg)
# } else if ( input$radio1==1 AND input$radio2==3) {
   # mpg <- 27.8246 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg)
# } else if ( input$radio1==2 AND input$radio2==1) {
   # mpg <- 33.7536 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg)
# } else if ( input$radio1==2 AND input$radio2==2) {
   # mpg <- 29.4963 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg) 
# } else
   # mpg <- 27.6745 -3.1496 * input$slider1
   # paste(Expected MPG is", mpg)