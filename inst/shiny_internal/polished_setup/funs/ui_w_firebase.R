#' function to generate UI
#'
#' @param ui the ui
#' @param firebase_config the Firebase configuration
#' @param firebase_functions_url the Functions url
#'
#' @return the Shiny UI with Firebase initialized
#'
ui_w_firebase <- function(ui, firebase_config, firebase_functions_url) {

  function(req) {
    tagList(
      tags$head(
        tags$link(href = "polish/js/toastr.min.js")
      ),
      ui,
      polished::firebase_dependencies(),
      polished::firebase_init(firebase_config),
      tags$script(src = "polish/js/toastr.min.js"),
      tags$script(src = "polished_setup.js")
    )
  }
}