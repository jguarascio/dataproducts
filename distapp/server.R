library(shiny)

# Generate a linear model on the dataset
fit<-lm(dist~speed,data=cars)

# Create a function that predicts the distance when given a speed based on the lm
dist <- function(x) {
        predict(fit,newdata=data.frame(speed=x))
}

# Server code
shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$speed})
    output$prediction <- renderPrint({dist(input$speed)})
    output$plot <- renderPlot({
            plot(cars,xlab="Speed (mph)",ylab="Stopping Distance (ft)")
            abline(fit)
            points(input$speed,dist(input$speed),pch=19,col="red",cex=2)
    })
  }
)
