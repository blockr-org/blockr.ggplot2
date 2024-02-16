<!-- badges: start -->
<!-- badges: end -->

# blockr.ggplot2

Set of ggplot2 blocks for [blockr](https://github.com/blockr-org/blockr).

## Installation

```r
# install.packages("remotes")
remotes::install_github("blockr-org/blockr.ggplot2")
```

## Example

```r
library(blockr)
library(blockr.ggplot2)

stack <- new_stack(
    data_block,
    ggplot_block,
    geompoint_block
)

ui <- fluidPage(
    theme = bslib::bs_theme(5L),
    generate_ui(stack)
)

server <- function(...){
    generate_server(stack)
}

shinyApp(ui, server)
```
