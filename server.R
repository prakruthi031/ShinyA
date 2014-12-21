GDP <- function(C,I,G,E,Im) C+I+G+E-Im
INFLATION <- function(cpi2,cpi1) (cpi2-cpi1)*100/cpi1

shinyServer( function(input, output) {
  output$inputchoice <- renderPrint({input$compvar})
  output$computation <- renderPrint({
    if (input$compvar == 'GDP') GDP(input$consumption,input$investment,input$govpur,input$netexp,input$netimp)
    else INFLATION(input$cpi2,input$cpi1)
  }) }
)