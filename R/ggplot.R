#' GGplot block
#' 
#' Ggplot block.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_select_field new_list_field
#' @importFrom ggplot2 ggplot aes_string
#' 
#' @export
ggplot_block <- function(data, ...) {
  initialize_block(new_ggplot_block(data, ...), data)
}

new_ggplot_block <- function(data, ...){
  col_names <- \(data) colnames(data)

  x_default <- \(data) col_names(data)[1]
  y_default <- \(data) col_names(data)[2]

  new_block(
    fields = list(
      x = new_select_field(x_default, col_names),
      y = new_select_field(y_default, col_names)
    ),
    expr = quote({
      ggplot(
        data = data,
        mapping = aes_string(
          x = .(x),
          y = .(y)
        )
      )
    }),
    class = c("ggplot_block", "plot_block"),
    ...
  )
}
