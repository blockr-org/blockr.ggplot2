library(shiny)
library(blockr)
devtools::load_all()

stack <- new_stack(
  data_block,
  ggplot_block,
  geompoint_block
)

ui <- fluidPage(
  theme = bslib::bs_theme(5L),
  generate_ui(stack)
)

server <- function(input, output, session) {
  generate_server(stack) 
}

shinyApp(ui, server)
