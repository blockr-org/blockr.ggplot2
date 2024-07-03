#' Smooth block
#' 
#' Fit a line to a ggplot2 object.
#'
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_switch_field
#' @importFrom ggplot2 geom_smooth
#' 
#' @export
new_geomsmooth_block <- function(...) {
  new_block(
    fields = list(
      color = new_string_field("red"),
      method = new_select_field("glm", choices =  c("lm", "glm", "gam", "loess")),
      se = new_switch_field(value = FALSE)
    ),
    expr = quote(
      geom_smooth(color = .(color), method = .(method), se = .(se))
    ),
    class = c("geomsmooth_block", "plot_layer_block", "plot_block"),
    ...
  )
}
