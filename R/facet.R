#' Facet block
#' 
#' Facet wrap block for ggplot2.
#' 
#' @param ... Passed to [blockr::new_block()].
#' 
#' @importFrom blockr new_block new_select_field
#' @importFrom ggplot2 facet_wrap
#' 
#' @export
new_facet_block <- function(...) {
  sel_cols <- function(data){
    colnames(data$data)
  }

  sel_cols_1 <- function(data){
    sel_cols(data)[1]
  }

  new_block(
    expr = quote(
      ggplot2::facet_wrap(facets = .(facet_var))
    ),
    fields = list(
      facet_var = new_select_field(sel_cols_1, sel_cols)
    ),
    class = c("facet_block", "plot_layer_block", "plot_block"),
    ...
  )
}
