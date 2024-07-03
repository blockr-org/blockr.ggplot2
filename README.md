<!-- badges: start -->
<!-- badges: end -->

# blockr.ggplot2

Set of ggplot2 blocks for [blockr](https://github.com/blockr-org/blockr).

## Installation

```r
# install.packages("remotes")
remotes::install_github("blockr-org/blockr.ggplot2")
```

## Example

```r
library(blockr)
library(blockr.ggplot2)

stack <- new_stack(
    new_dataset_block(selected = "BOD"),
    new_ggplot_block(func = c("x", "y"), default_columns = c("Time", "demand")),
    new_geompoint_block
)

serve_stack(stack)
```
