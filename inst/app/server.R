################################################################################
# Server Script for the Shiny Application
# Author(s):  Arevalo-Torres, J. - Martinez-Lopez, J.
################################################################################
library("spdynmod")

shinyServer(function(input, output, session) { 

########## Input Datasets#############



########## Data Table############
#######
output$plot <- renderPlot({
 
  isolate({
   input$runModel  
   run_model(pgr_rb = input$pgr_rb, pgr_sm = input$pgr_sm, rnd = input$rnd, method = input$method, TS = input$TS)
  plot_maps()
  })
})
########
output$plot2 <- renderPlot({
  #isolate({
   # input$runModel  
    mrgf(year = input$year, w1 = input$w1, w2 = input$w2)
    mrgf()
#  })
})

#########
})
