library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Stopping Distance Prediction"),
  
    sidebarPanel(
      sliderInput('speed', 'Speed (mph)', min = 5, max = 25, value=15),
      h3("Documentation"),
      helpText("This tool takes speed (mph) as input and estimates ", 
               "the distance (ft) needed to come to a complete stop",
               "The prediction algorithm uses a linear model based on the cars dataset in R.",
               "The predicted value is plotted along with the actual data for comparison."
               )
    ),
    mainPanel(
        h4('Speed (mph)'),
        verbatimTextOutput("inputValue"),
        h4('Stopping Distance (ft)'),
        verbatimTextOutput("prediction"),
        plotOutput('plot')
    )
  )
)

