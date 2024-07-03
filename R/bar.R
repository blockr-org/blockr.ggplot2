#' Bar block
#' 
#' Add bar to a ggplot2 object.
#' 
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_bar
#' 
#' @export
new_geombar_block <- function(...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_bar(stat = "identity")
    ),
    class = c("geombar_block", "plot_layer_block", "plot_block"),
    ...
  )
}
