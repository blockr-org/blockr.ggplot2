#' Histogram block
#' 
#' Add histogram to a ggplot2 object.
#'
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_histogram
#' 
#' @export
new_geomhistogram_block <- function(...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_histogram()
    ),
    class = c("geomhistogram_block", "plot_layer_block", "plot_block"),
    ...
  )
}
