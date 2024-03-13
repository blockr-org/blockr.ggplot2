#' Jitter block
#' 
#' Jitter block for ggplot2.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_numeric_field
#' @importFrom ggplot2 geom_jitter
#' 
#' @export
geomjitter_block <- function(data, ...) {
  initialize_block(new_geomjitter_block(data, ...), data)
}

new_geomjitter_block <- function(data, ...) {
  new_block(
    fields = list(
      width = new_numeric_field(0.45, min = 0, max = 1)
    ),
    expr = quote(
      ggplot2::geom_jitter(width = .(width))
    ),
    class = c("geomjitter_block", "plot_layer_block", "plot_block"),
    ...
  )
} 
