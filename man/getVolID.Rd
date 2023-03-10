% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getBIIGLE.R
\name{getVolID}
\alias{getVolID}
\title{Get Volume ID}
\usage{
getVolID(url, auth, volName)
}
\arguments{
\item{url}{BIIGLE server URL (e.g. "https://seaimage.oc.ntu.edu.tw").}

\item{auth}{Authentication string generated by \code{\link{genAuth}}.}

\item{volName}{Volume name on BIIGLE that you interested in.}
}
\description{
Get volume ID through volume name.
NOTE: The volume name must be unique on BIIGLE server, otherwise it cannot know which volume you are interested with.
}
\examples{
\dontrun{
volID <- getVolID(url = "https://seaimage.oc.ntu.edu.tw",
                  auth = myAuth,
                  volName = "TTC17")
}
}
