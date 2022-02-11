# Ui functions ------------------------------------------------------------
uiChangeThemeDropdown <- function()
{
  ns <- NS("moduleChangeTheme")
  dropdown <- tagList(
     prettySwitch(
      inputId =  ns("dbxChangeTheme"),
      label = NULL,
      value = TRUE,
      status = "default",
      fill = TRUE,
      bigger = TRUE,width="50px")
    # radioButtons(
    #   inputId =  ns("dbxChangeTheme"),
    #   label = NULL, 
    #     
    #   choiceNames   = c("dark", "light"), 
    #   choiceValues  = c(T, F))
  )
  
  return(dropdown)
}

uiChangeThemeOutput <- function()
{
  ns <- NS("moduleChangeTheme")
  themeOutput <- tagList(
    uiOutput(ns("uiChangeTheme"))
  )
  
  return(themeOutput)
}


# Server functions --------------------------------------------------------
serverChangeTheme <- function(input, output, session)
{
  observeEvent(
    input$dbxChangeTheme, 
    {
      output$uiChangeTheme <- renderUI({
        shinyDashboardThemes(theme = ifelse(input$dbxChangeTheme, "grey_dark", "grey_light"))
      })
    }
  )
}
