#' Count rows matching a pattern using grep and fread
#'
#' @param pattern The pattern to search for.
#' @param file The CSV file to search in.
#' @param ignore_case Whether to ignore case (default: FALSE).
#' @return The number of matching rows.
#' @export
grep_count <- function(pattern, file = "diamonds.csv", ignore_case = FALSE) {
  if (!file.exists(file)) {
    stop("File does not exist.")
  }
  
  grep_cmd <- paste("grep", if (ignore_case) "-i" else "", shQuote(pattern), shQuote(file))
  result <- data.table::fread(cmd = grep_cmd)
  
  return(nrow(result))
}
