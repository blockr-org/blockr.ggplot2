#' Histogram block
#' 
#' Add histogram to a ggplot2 object.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_histogram
#' 
#' @export
geomhistogram_block <- function(data, ...) {
  initialize_block(new_geomhistogram_block(data, ...), data)
}

new_geomhistogram_block <- function(data, ...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_histogram()
    ),
    class = c("geomhistogram_block", "plot_layer_block", "plot_block"),
    ...
  )
}
