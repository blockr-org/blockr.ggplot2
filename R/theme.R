#' Theme block
#' 
#' Theme a ggplot2 object.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_smooth
#' 
#' @export
theme_block <- function(data, ...) {
  initialize_block(new_theme_block(data, ...), data)
}

new_theme_block <- function(data, ...) {
  new_block(
    fields = list(
      theme = new_select_field(
        "theme_minimal", 
        grep("^theme_.*$", ls("package:ggplot2"), perl = TRUE, value = TRUE),
        type = "name"
      )
    ),
    expr = quote(
      do.call(.(theme), list())
    ),
    class = c("theme_block", "plot_layer_block", "plot_block"),
    ...
  )
}
