
shinyServer(function(input, output, session) {
  # Get the data from the variables declared on the ui.R file
  df <- reactive({mtcars[, c(input$xCol, input$yCol)]})
  
  # Build the clusters
  #clusters <- reactive({kmeans(df(), input$clusters)})
  
  # Create the plot
  output$plot <- renderPlot({plot(df(), pch = 20, cex = 3, col = "blue",
                                  main = "1974 Motor Trend dataset")})
})