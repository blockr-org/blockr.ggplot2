#' Label block
#' 
#' Add labels to a ggplot2 object.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_string_field
#' @importFrom ggplot2 labs
#' 
#' @export
label_block <- function(data, ...) {
  initialize_block(new_label_block(data, ...), data)
}

new_label_block <- function(data, ...) {
  new_block(
    fields = list(
      xlab = new_string_field(num_cols(data$data)[1]),
      ylab = new_string_field(num_cols(data$data)[2]),
      title = new_string_field("")
    ),
    expr = quote(
      ggplot2::labs(x = .(xlab), y = .(ylab), title = .(title))
    ),
    class = c("label_block", "plot_layer_block", "plot_block"),
    ...
  )
} 
