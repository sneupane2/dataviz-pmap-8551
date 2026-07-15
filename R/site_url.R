course_site_url <- function(path = NULL) {
  base_url <- yaml::read_yaml(here::here("_quarto.yml"))$website$`site-url`
  base_url <- sub("/+$", "", base_url)

  if (is.null(path) || identical(path, "")) {
    return(paste0(base_url, "/"))
  }

  paste0(base_url, "/", sub("^/+", "", path))
}
