header <- dashboardHeader(title = customLogo,
                          tags$li(class = "dropdown",
                                  tags$li(class = "dropdown", style = "display:table; margin: 15px 0px 0px 0px;", 
                                          uiChangeThemeDropdown()))
                          ) # end header   

sidebar <- dashboardSidebar()

body <- dashboardBody(
  uiChangeThemeOutput(),
  h1("This is my fantastic Shiny App")
  ) #end body


shinydashboardPlus::dashboardPage(header, sidebar, body)
