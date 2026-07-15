cache_textdata_lexicon <- function(name, getter) {
  cache_dir <- getter(return_path = TRUE)
  dir.create(cache_dir, recursive = TRUE, showWarnings = FALSE)

  if (length(list.files(cache_dir, all.files = TRUE, no.. = TRUE)) == 0) {
    textdata:::download_functions[[name]](cache_dir)
  }

  invisible(getter(manual_download = TRUE))
}
