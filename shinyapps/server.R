library(UsingR)
data(mtcars)

mpgPred <- function(c, h, w) {
   mtcars$cyl=factor(mtcars$cyl)
   fit <- lm(mpg~cyl+hp+wt, data=mtcars)
   p1 <- data.frame(cyl=c(c), hp=c(h), wt=c(w))
   predict(fit, newdata=p1)
}

shinyServer(
   function(input, output) {
      output$cyl <- renderText({input$cyl})
      output$hp <- renderText({input$hp})
      output$wt <- renderText({input$wt})
      data <- reactive({mpgPred(input$cyl, input$hp, input$wt)})
      output$res <- renderPrint(data()[[1]])
   }
)
