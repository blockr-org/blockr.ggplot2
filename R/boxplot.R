#' Boxplot block
#' 
#' Boxplot block for ggplot2.
#' 
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_boxplot
#' 
#' @export
new_geomboxplot_block <- function(...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_boxplot()
    ),
    class = c("geomboxplot_block", "plot_layer_block", "plot_block"),
    ...
  )
} 
