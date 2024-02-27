#' GGplot block
#' 
#' Ggplot block.
#' 
#' @param data Data to be plotted.
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_select_field new_list_field
#' @importFrom ggplot2 ggplot aes
#' 
#' @export
ggplot_block <- function(data, ...) {
  initialize_block(new_ggplot_block(data, ...), data)
}

new_ggplot_block <- function(
    data,
    func = c("x"),
    default_columns = character(),
    ...) {
  if (length(default_columns) > 0) {
    stopifnot(length(func) == length(default_columns))
  }
  
  # Columns are only a select input
  sub_fields <- function(data, funcs) {
    all_cols <- colnames(data)
    tmp_selects <- lapply(
      seq_along(funcs),
      function(i) {
        default <- if (length(default_columns) > 0) {
          default_columns[[i]]
        } else {
          all_cols[[1]]
        }
        
        new_select_field(value = default, choices = all_cols)
      }
    )
    names(tmp_selects) <- funcs
    tmp_selects
  }
  
  ggplot_expr <- function(data, funcs, columns) {
    # Build expressions that will go inside the ggplot
    if (length(funcs) == 0) {
      return(quote(TRUE))
    }
    if (length(columns) == 0) {
      return(quote(TRUE))
    }
    
    tmp_exprs <- lapply(funcs, function(fun) {
      col <- columns[[fun]]
      
      if (is.null(col)) {
        return(quote(TRUE))
      }
      if (!any(col %in% colnames(data))) {
        return(quote(TRUE))
      }
      col <- as.name(col)
      expr <-  bquote(
        .(column),
        list(column = col)
      )
      bquote(
        .(expr),
        list(
          expr = expr,
          column = col
        )
      )
    })
    bquote(
      ggplot2::ggplot(ggplot2::aes(..(exprs))),
      list(exprs = tmp_exprs),
      splice = TRUE
    )
  }
  
  func_choices <- c(
    "x",
    "y"
  )
  
  fields <- list(
    funcs = new_select_field(func, func_choices, multiple = TRUE),
    columns = new_list_field(sub_fields = sub_fields),
    expression = new_hidden_field(ggplot_expr)
  )
  
  new_block(
    fields = fields,
    expr = quote(.(expression)),
    ...,
    class = c("ggplot_block", "plot_block", "submit_block")
  )
}