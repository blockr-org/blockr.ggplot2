num_cols <- function(data) {
  colnames(dplyr::select_if(data, is.numeric))
}

char_cols <- function(data) {
  colnames(dplyr::select_if(data, \(x) is.character(x) | is.factor(x)))
}

globalVariables("data")