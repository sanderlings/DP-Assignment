shinyUI(pageWithSidebar(
   headerPanel("Estimating MPG"),
   
   sidebarPanel(
      p("Please select the following values for the prediction"),
      br(),
      radioButtons(inputId="cyl", label="Number of cylinder",
                  choices=list("4"=4,"6"=6,"8"=8), selected=4),
      br(),
      sliderInput(inputId='hp', label='Horsepower', 
                 value=150, min=50, max=350, step=5,),
      br(),
      sliderInput(inputId='wt', label='Weight (1000 lbs)', 
                 value=3, min=1.5, max=5.5, step=0.05,)
   ),
   
   mainPanel(
      p("This is an app to estimate the MPG of vehicles. 
         The dataset is from the R library 'mtcars' which contains 32 observations. 
         A linear regression model was built using the 3 significant factors - 
         number of cylinder, horsepower, and weight -  to predict the MPG. 
         The default values for the 3 factors are 4, 150, and 3 respectively."),
      p("To use the app, select the desired values of the 3 factors on the left. 
        The model will predict the MPG based on your input, 
        the result will be shown under the 'Estimated MPG'"),
      br(),
      h4("You entered"),
      p("Number of cylinder:", verbatimTextOutput('cyl')),
      p("Horsepower:", verbatimTextOutput('hp')),
      p("Weight:", verbatimTextOutput('wt')),
      br(),
      p("Estimated MPG:", textOutput('res'))   
   )
))
