# Shiny-Dashboard-Template-Dark-Light

This is a shiny ~admin~ dashboard template with a dark to light color switch. 

Ii is based on on following `R` packages: 

    library(shiny)
    library(shinydashboard)
    library(dashboardthemes)
    library(shinyWidgets)

and there is a [Live Demo](https://roman-tremmel.shinyapps.io/Shiny_Dashboard_Dark_light/) or try to run the App locally using   


    list_of_packages = c("shiny", "shinydashboard", "dashboardthemes", "shinyWidgets")
    lapply(list_of_packages, function(x) if(!require(x,character.only = TRUE)) install.packages(x))
    shiny::runGitHub("roman-tremmel/Shiny-Dashboard-Template-Dark-Light")



The main feature is a radio switch in the top right corner. Then, the user can toggle between a dark and light theme.  

<img src="/app.png" />


Of course any other theme can be specified in the `modules/theme_switch.R` file here

    shinyDashboardThemes(theme = ifelse(input$dbxChangeTheme, "grey_dark", "grey_light"))
        
