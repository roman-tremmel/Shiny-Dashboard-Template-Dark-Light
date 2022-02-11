library(shiny)
library(shinydashboard)
library(dashboardthemes)
library(shinyWidgets)

app_version <- "1.0"
source("modules/theme_switch.R")
customLogo <- shinyDashboardLogoDIY(boldText = "Shiny",
                                    mainText = "App",
                                    badgeBackColor = "#017DC3",
                                    badgeText = paste0("v.",app_version),
                                    badgeTextColor = "white")

