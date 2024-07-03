#' @importFrom blockr register_block
register_ggplot_blocks <- function(pkg){
  register_block(
    constructor = new_ggplot_block,
    name = "ggplot",
    description = "Initialise a ggplot2 plot",
    classes = c("ggplot_block", "plot_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
  register_block(
    constructor = new_geomhistogram_block,
    name = "geomhistogram",
    description = "Ggplot2 histogram plot",
    classes = c("geomhistogram_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
  register_block(
    constructor = new_geompoint_block,
    name = "geompoint",
    description = "Ggplot2 geom point",
    classes = c("geompoint_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
  
  register_block(
    constructor = new_facet_block,
    name = "facet",
    description = "Facet wrap a ggplot2 plot",
    classes = c("facet_block", "plot_layer_block", "plot_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_geombar_block,
    name = "geombar",
    description = "Ggplot2 geom bar plot",
    classes = c("geombar_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
  register_block(
    constructor = new_geomline_block,
    name = "geomline",
    description = "Gggplot2 geom line",
    classes = c("geomline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_annotate_block,
    name = "annotate",
    description = "Annotate a ggplot2 plot",
    classes = c("annotate_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_geomsmooth_block,
    name = "geomsmooth",
    description = "Fit a line to a ggplot2 plot",
    classes = c("geomsmooth_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_geomvline_block,
    name = "geomvline",
    description = "Add a vertical line to a ggplot2 plot",
    classes = c("geomvline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_geomhline_block,
    name = "geomhline_block",
    description = "Add a horizontal line to a ggplot2 plot",
    classes = c("geomhline_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )

  register_block(
    constructor = new_label_block,
    name = "label plot",
    description = "Label ggplot2 plot",
    classes = c("label_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  ) 

  register_block(
    constructor = new_theme_block,
    name = "theme_block",
    description = "Add a theme to a ggplot2 plot",
    classes = c("theme_block", "plot_block", "plot_layer_block"),
    input = "plot",
    output = "plot",
    package = pkg
  )
}
