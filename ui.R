library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Developing Data Products - Age and Zodiac Calculator!"),
  sidebarPanel(
    dateInput("birthdate", "Please enter your birth date:"),
    checkboxGroupInput("display", "Do you want to:",
                       c("Display Age" = "1",
                         "Display Zodiac Sign" = "2")),
    h3("Brief Summary:"),
    h5("This application simply performs 2 tasks:"),
    h5("It can calculate your age today, according 
       to your birthdate entered in the textbox above. It will also show your zodiac sign
       according to your birthdate. You can choose what to show by clicking any of the above checkboxes."),
    h6("For more details and to view the ui.r and server.r scripts, please visit the GitHub repository at: https://github.com/shikododo/DataProducts")
  ),
  mainPanel(
    h4('Your Birthdate is:'),
    verbatimTextOutput("oid1"),
    verbatimTextOutput("oid2")
  )
))