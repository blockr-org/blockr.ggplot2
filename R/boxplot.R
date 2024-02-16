#' Boxplot block
#' 
#' Boxplot block for ggplot2.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_boxplot
#' 
#' @export
geomboxplot_block <- function(data, ...) {
  initialize_block(new_geomboxplot_block(data, ...), data)
}

new_geomboxplot_block <- function(data, ...) {
  new_block(
    fields = list(),
    expr = quote(
      geom_boxplot()
    ),
    class = c("geomboxplot_block", "plot_layer_block", "plot_block"),
    ...
  )
} 
