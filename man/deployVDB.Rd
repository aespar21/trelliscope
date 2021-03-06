% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/webSync.R
\name{deployVDB}
\alias{deployVDB}
\title{Deploy VDB to shinyapps.io or RStudio Connect}
\usage{
deployVDB(vdbConn = getOption("vdbConn"), appName = NULL, account = NULL,
  redeploy = TRUE, size = NULL, instances = NULL, quiet = FALSE)
}
\arguments{
\item{vdbConn}{A vdbConn object containing the VDB connection settings}

\item{appName}{name of application (app will be available at https://[account].shinyapps.io/[appName]/ or at https://beta.rstudioconnect.com/[account]/[appName] if using RStudio connect) - if not supplied, will use the name of VDB connection}

\item{account}{passed to \code{rsconnect::configureApp}}

\item{redeploy}{passed to \code{rsconnect::configureApp}}

\item{size}{passed to \code{rsconnect::configureApp}}

\item{instances}{passed to \code{rsconnect::configureApp}}

\item{quiet}{passed to \code{rsconnect::configureApp}}
}
\description{
Deploy VDB to shinyapps.io or RStudio Connect
}
\details{
If you do not have a shinyapps.io account and have not set your account info, first visit here prior to calling this function: \url{http://shiny.rstudio.com/articles/shinyapps.html}.

\code{\link{syncLocalData}}
}
\examples{
\dontrun{

library(ggplot2)

vdbConn(tempfile(), autoYes = TRUE)

# make a simple display
d <- divide(iris, by = "Species")
makeDisplay(d, name = "sl_vs_sw",
  panelFn = function(x)
    qplot(Sepal.Width, Sepal.Length, data = x))

# add additional displays...

# assuming an account has already been configured with shinyapps.io
# or RStudio Connect
deployVDB(appName = "deployVDB-example")
}
}

