#' @importFrom blockr register_block
register_ggplot_blocks <- function(pkg){
  register_block(
    constructor = ggplot_block,
    name = "ggplot",
    description = "Initialise a ggplot2 plot",
    classes = c("ggplot_block", "plot_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = geompoint_block,
    name = "geompoint",
    description = "Ggplot2 geom point",
    classes = c("geompoint_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
  
  register_block(
    constructor = facet_block,
    name = "facet",
    description = "Facet wrap a ggplot2 plot",
    classes = c("facet_block", "plot_layer_block", "plot_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = geomline_block,
    name = "geomline",
    description = "Gggplot2 geom line",
    classes = c("geomline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = annotate_block,
    name = "annotate",
    description = "Annotate a ggplot2 plot",
    classes = c("annotate_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = geomsmooth_block,
    name = "geomsmooth",
    description = "Fit a line to a ggplot2 plot",
    classes = c("geomsmooth_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = geomvline_block,
    name = "geomvline",
    description = "Add a vertical line to a ggplot2 plot",
    classes = c("geomvline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = geomhline_block,
    name = "geomhline_block",
    description = "Add a horizontal line to a ggplot2 plot",
    classes = c("geomhline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = label_block,
    name = "label plot",
    description = "Label ggplot2 plot",
    classes = c("label_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  ) 

  register_block(
    constructor = theme_block,
    name = "theme_block",
    description = "Add a theme to a ggplot2 plot",
    classes = c("theme_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
}
