% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/admin_module.R
\name{admin_module_ui}
\alias{admin_module_ui}
\title{admin_ui}
\usage{
admin_module_ui(
  id,
  custom_admin_ui = NULL,
  options = default_admin_ui_options(),
  include_go_to_shiny_app_button = TRUE
)
}
\arguments{
\item{id}{the Shiny module id}

\item{custom_admin_ui}{Either `NULL`, the default, or a list of 2 elements containing custom
ui to add addtional `shinydashboard` tabs to the Polished admin panel.}

\item{options}{list of html elements to customize branding of Admin Panel.}

\item{include_go_to_shiny_app_button}{whether or not to include the button to go to
the Shiny app.  This argument is set to `FALSE` when `polished` is in "admin_mode".}
}
\description{
admin_ui
}
