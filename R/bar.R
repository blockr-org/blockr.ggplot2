#' Bar block
#' 
#' Add bar to a ggplot2 object.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_bar
#' 
#' @export
geombar_block <- function(data, ...) {
  initialize_block(new_geombar_block(data, ...), data)
}

new_geombar_block <- function(data, ...) {
  new_block(
    fields = list(),
    expr = quote(
      geom_bar(stat="identity")
    ),
    class = c("geombar_block", "plot_layer_block", "plot_block"),
    ...
  )
}