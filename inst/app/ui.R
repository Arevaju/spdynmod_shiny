library(shiny)
library(tmap)
  ui = pageWithSidebar(
    headerPanel("spdynmod Tool"), 
    sidebarPanel(
      conditionalPanel(
        "$('li.active a').first().html()==='Model'",
      numericInput("pgr_rb", 'potential growth rate of reed beds', value = 0.005, min = 0.00001, max = 1 ),
      numericInput("pgr_sm", 'potential growth rate of salt marsh', value = 0.2, min = 0.00001, max = 1),
      selectInput("rnd", 'random initial state', c( 'FALSE', 'TRUE')),
      selectInput("method", 'integration method', c( 'euler','lsodes',  'rk4','ode23', 'ode45','adams', 'iteration')),
      sliderInput("TS", 'time step',min = 0.05, max = 1, value = 0.25, step= 0.15),
      submitButton( "Run Model")
      #"runModel"
    ),
    conditionalPanel(
      "$('li.active a').first().html()==='Mrgf'",
      selectInput("year", 'Year', c( 1992,1995,  1997,2001, 2008)),
#       radioButtons(inputId ="year",
#                    inline = TRUE,
#                    label = (HTML("Year")),
#                    choices = as.list(1992,1995,1997,2001,2008)
#                    )),
      numericInput("w1", 'initial window size', value = 1, min = 1, max = 50),
      numericInput("w2", 'Final window size', value = 27, min = 1, max = 50),
      submitButton( "Run Goodness of Fit")
      #"runModel"
    )),
mainPanel(
  tabsetPanel(
    tabPanel("Model",plotOutput("plot")),
    tabPanel("Mrgf", plotOutput("plot2"))
    )
)
)