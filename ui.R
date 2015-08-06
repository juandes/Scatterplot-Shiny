shinyUI(pageWithSidebar(
  # Application title
  titlePanel('Plotting the 1974 Motor Trend dataset using Shiny'),
  
  # Sidebar with 2 select inputs and a numeric input
  sidebarPanel(
    selectInput('xCol', 'X', names(mtcars)),
    selectInput('yCol', 'Y', names(mtcars))),
  
  # Shows the plot
  mainPanel(plotOutput('plot'))
))