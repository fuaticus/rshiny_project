
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

body <- dashboardBody(

    fluidRow(
        box(
            title = "Title 1", width = 4, solidHeader = TRUE, status = "primary",
            fluidRow(
                column(width = 6, 
                        numericInput(inputId = '1_1_input',
                                     label = '1_1_label',
                                     value = 12),
                        numericInput(inputId = '1_2_input',
                                     label = '1_2_label',
                                     value = 12),
                        numericInput(inputId = '1_3_input',
                                     label = '1_3_label',
                                     value = 12)
                       
                ),
                column(width = 6, 
                           numericInput(inputId = '1_4_title',
                                        label = '1_4_label',
                                        value = 12),
                           numericInput(inputId = '1_5_title',
                                        label = '1_5_label',
                                        value = 12),
                           numericInput(inputId = '1_6_title',
                                        label = '1_6_label',
                                        value = 12)
                )
            )
        ),
        box(
            title = "Title 2", width = 4, solidHeader = TRUE, status = "primary",
            numericInput(inputId = 'variable_1',
                         label = 'Variable 1',
                         value = 12),
            numericInput(inputId = 'variable_2',
                         label = 'Variable 2',
                         value = 12),
            numericInput(inputId = 'variable_2',
                         label = 'Variable 2',
                         value = 12)
        ),
        box(
            title = "Title 3", width = 4, solidHeader = TRUE, status = "primary",
            numericInput(inputId = '3_1_input',
                         label = '3_1_label',
                         value = 12),
            numericInput(inputId = '3_2_input',
                         label = '3_2_label',
                         value = 12),
            numericInput(inputId = '3_3_input',
                         label = '3_3_label',
                         value = 12)
        )
    ),
    
    fluidRow(
        column(width = 3,
               valueBox(10 * 2, "New Orders", icon = icon("credit-card"), width=12),
               br(),
               valueBox(10 * 2, "New Orders", icon = icon("credit-card"), width=12)
            
        ),
        column(width = 9,
            box(
                title = "Title 6",width = 12, background = "maroon",
                "A box with a solid maroon background")
        )
    )
)

# We'll save it in a variable `ui` so that we can preview it in the console
ui <- dashboardPage(
    dashboardHeader(title = "Row layout"),
    dashboardSidebar(),
    body
)

server <- function(input, output) {
    output$progressBox <- renderInfoBox({
        infoBox(
            "Progress", "25%", icon = icon("list"),
            color = "purple"
        )
    })
    output$approvalBox <- renderInfoBox({
        infoBox(
            "Approval", "80%", icon = icon("thumbs-up", lib = "glyphicon"),
            color = "yellow"
        )
    })
}

# Preview the UI in the console
shinyApp(ui = ui, server = function(input, output) { })