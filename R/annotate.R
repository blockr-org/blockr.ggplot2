#' Annotate block
#' 
#' Annotate block for ggplot2.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr initialize_block new_block new_numeric_field new_string_field
#' @importFrom ggplot2 annotate
#' 
#' @export
annotate_block <- function(data, ...) {
  initialize_block(new_annotate_block(data, ...), data)
}

new_annotate_block <- function(data, ...) {
  new_block(
    fields = list(
      x_position = new_numeric_field(value = 1, min = 0, max = 100),
      y_position = new_numeric_field(value = 5, min = 0, max = 100),
      hjust = new_numeric_field(value = 1, min = 0, max = 1),
      vjust = new_numeric_field(value = 1, min = 0, max = 1),
      size = new_numeric_field(value = 5, min = 1, max = 20),
      color = new_string_field("red")
    ),
    expr = quote(
      ggplot2::annotate(
        "text", 
        x = .(x_position), 
        y = .(y_position), 
        label = sprintf("R = %.2f, p = %.2e\nn = %d", calculate_r(data), calculate_p_value(data), calculate_n(data)),
        hjust = .(hjust), 
        vjust = .(vjust), 
        size = .(size), 
        color = .(color)
      )
    ),
    class = c("annotate_block", "plot_layer_block", "plot_block"),
    ...
  )
}

calculate_n <- function(data) {
  nrow(data$data) 
}

calculate_p_value <- function(data) {
  x <- data$mapping$x |> rlang::eval_tidy(data = data$data)
  y <- data$mapping$y |> rlang::eval_tidy(data = data$data)
  stats::cor.test(x = x, y = y)$p.value
}

calculate_r <- function(data) {
  x <- data$mapping$x |> rlang::eval_tidy(data = data$data)
  y <- data$mapping$y |> rlang::eval_tidy(data = data$data)
  stats::cor.test(x = x, y = y)$p.value
}
