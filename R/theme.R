#' Theme block
#' 
#' Theme a ggplot2 object.
#'
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_smooth
#' 
#' @export
new_theme_block <- function(...) {
  new_block(
    fields = list(
      theme = new_select_field(
        "theme_minimal", 
        grep("^theme_.*$", ls("package:ggplot2"), perl = TRUE, value = TRUE) |>
          (\(x){x[!x %in% c("theme_set", "theme_get", "theme_update", "theme_test")]})(),
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
