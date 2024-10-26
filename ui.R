#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

ui <- fluidPage(
  titlePanel("Plateforme Génétique H5N1"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput("fastaFile", "Charger une séquence FASTA", accept = ".fasta"),
      actionButton("analyze", "Lancer l'analyse")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Analyse globale", verbatimTextOutput("globalAnalysis")),
        tabPanel("Analyse locale", verbatimTextOutput("localAnalysis")),
        tabPanel("Phylogenèse", plotOutput("phylogenyPlot")),
        tabPanel("Visualisation", htmlOutput("genomeBrowser"))
      )
    )
  )
)

server <- function(input, output) {
  # À compléter dans chaque section
}

shinyApp(ui = ui, server = server)

