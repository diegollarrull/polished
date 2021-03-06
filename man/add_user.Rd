% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_user.R
\name{add_user}
\alias{add_user}
\title{add_user}
\usage{
add_user(conn, email, created_by, modified_by = NULL, schema = "polished")
}
\arguments{
\item{conn}{the database connection}

\item{email}{the email address of the user to be added}

\item{created_by}{the uid of the user that created this new user}

\item{modified_by}{the uid of the user that last modified this user}

\item{schema}{the database schema}
}
\value{
the uid of the newly created user or NULL if the user already exists
}
\description{
add_user
}
