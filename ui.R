shinyUI(pageWithSidebar(
  headerPanel("Computing GDP/Inflation"),
  
  sidebarPanel(
    helpText("This application computes the Gross Domestic Product and the Inflation rate (in %) of a country. It can compute the GDP contribution by an individual or a firm or for the entire country depending on the inputs. For computing the GDP, it takes in as its inputs, the total consumption, total investment, total government purchases, net exports (total exports - total imports). It also provides a facility to compute Inflation rate. For computing the inflation rate, provide as inputs the Consumer Price Index for year and the base year or the price of the product for the required year and base year."),
    br(),
    selectInput("compvar", "What do you want to compute:",c("GDP","Inflation")),
    br(),
    helpText("Note: Give inputs only for the option you choose to compute (GDP or Inflation). Click the Submit button once you have chosen the variable to be computed and given the necessary inputs."),
    br(),
      h4('Enter these values to compute GDP'),
      numericInput('consumption', 'Consumption (in $)', 10000),
      numericInput('investment', 'Investment (in $)', 5000),
      numericInput('govpur', 'Government Purchases (in $)', 3000),
      numericInput('netexp', 'Net Exports (in $)', 10000),
      numericInput('netimp', 'Net Imports (in $)', 10000),
      helpText("Note: If you enter the values at an individual level, it will indicate the GDP contribution by the person."),
      helpText("If you enter the values at a country level, it will compute the GDP of the nation."),
    br(),
    h3('Enter these values to compute Inflation'),
    numericInput('cpi2', 'Year 2 (CPI or individual component price)', 100),
    numericInput('cpi1', 'Year 1 (CPI or individual component price)', 50),
    submitButton("Compute")
    ),
  
  mainPanel(
    h3('Results:'),
    h4('You chose to compute'), 
    verbatimTextOutput("inputchoice"), 
    h4('The requested value:'), 
    verbatimTextOutput("computation")
  )
) )