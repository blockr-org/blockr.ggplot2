#' Point block
#' 
#' Add points to a ggplot2 object.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_point
#' 
#' @export
geompoint_block <- function(data, ...) {
  initialize_block(new_geompoint_block(data, ...), data)
}

new_geompoint_block <- function(data, ...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_point()
    ),
    class = c("geompoint_block", "plot_layer_block", "plot_block"),
    ...
  )
}
