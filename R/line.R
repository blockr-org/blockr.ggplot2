#' Line block
#' 
#' Add points to a ggplot2 object.
#' 
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_line
#' 
#' @export
new_geomline_block <- function(...) {
  new_block(
    fields = list(),
    expr = quote(
      ggplot2::geom_line()
    ),
    class = c("geomline_block", "plot_layer_block", "plot_block"),
    ...
  )
}

#' Horinzontal and Vertical Lines block
#' 
#' Add lines to a ggplot2 object.
#' 
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block
#' @importFrom ggplot2 geom_line
#' 
#' @name hvline
#' 
#' @export
new_geomhline_block <- function(...) {
  
  new_block(
    fields = list(
      yintercept = new_numeric_field(value = 10, min = 0, max = 1000),
      linetype = new_select_field(
        value = "blank",
        choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash", "twodash")
      )
    ),
    expr = quote(
      ggplot2::geom_hline(yintercept = .(yintercept), linetype = .(linetype))
    ),
    class = c("geomhline_block", "plot_layer_block", "plot_block"),
    ...
  )
}

#' @rdname hvline
#' @export
new_geomvline_block <- function(...) {
  new_block(
    fields = list(
      xintercept = new_numeric_field(value = c(10, 20), min = 0, max = 1000),
      linetype = new_select_field(
        value = "blank",
        choices = c("blank", "solid", "dashed", "dotted", "dotdash", "longdash", "twodash")
      )
    ),
    expr = quote(
      ggplot2::geom_vline(xintercept = .(xintercept), linetype = .(linetype))
    ),
    class = c("geomvline_block", "plot_layer_block", "plot_block"),
    ...
  )
}
