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

