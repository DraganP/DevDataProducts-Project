library(shiny)

#ui.R

shinyUI(fluidPage(
  titlePanel("Predicting Vehicle Mileage"),
  
  fluidRow(
    
        column(3,
      radioButtons("radio1", label = h3("Transmission Type"),
        choices = list("Manual" = 1, "Auto" = 2),selected = 1)),
   
   column(3,
      radioButtons("radio2", label = h3("Number of Cylinders"),
        choices = list("4 Cylinders" = 1, "6 Cylinders" = 2,
                       "8 Cylinders" = 3),selected = 1))   
  ),
    
  fluidRow(
       
    column(3, 
      sliderInput("slider1", label = h3("Vehicle Weight in 1,000 lbs"),
        min = 1.5, max = 5.5, value = 2.5, step = 0.1, round = FALSE, ticks = TRUE, animate = FALSE)
      )
  
  ),
  
      mainPanel(
      h1(textOutput("text1"))
    )

))

# shinyUI(fluidPage(
  # titlePanel("censusVis"),
  
  # sidebarLayout(
    # sidebarPanel(
      # helpText("Create demographic maps with 
        # information from the 2010 US Census."),
      
      # selectInput("var", 
        # label = "Choose a variable to display",
        # choices = c("Percent White", "Percent Black",
          # "Percent Hispanic", "Percent Asian"),
        # selected = "Percent White"),
      
      # sliderInput("range", 
        # label = "Range of interest:",
        # min = 0, max = 100, value = c(0, 100))
    # ),
    
    # mainPanel(
      # textOutput("text1"),
      # textOutput("text2")
    # )
  # )
# ))