#' get user by email address
#'
#' @param conn_ the database connection
#' @param email the user's email address
#' @param schema the database schema
#'
#' @return a list of user info if the user is found or `NULL`
#'
#' @export
#'
#' @importFrom DBI dbGetQuery
#'
get_user_by_email <- function(conn_, email, schema = "polished") {
  user_out <- DBI::dbGetQuery(
    conn_,
    paste0("SELECT * FROM ", schema, ".users WHERE email=$1"),
    params = list(
      email
    )
  )

  if (nrow(user_out) == 0) {
    return(NULL)
  }

  as.list(user_out)
}
