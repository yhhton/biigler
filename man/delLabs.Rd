% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/labelingAssistant.R
\name{delLabs}
\alias{delLabs}
\title{Delete label combination for images in filename order}
\usage{
delLabs(url, auth, imgStart, imgEnd, shortcut)
}
\arguments{
\item{url}{BIIGLE server URL (e.g. "https://seaimage.oc.ntu.edu.tw").}

\item{auth}{Authentication string generated by \code{\link{genAuth}}.}

\item{imgStart}{The start image's filename.}

\item{imgEnd}{The end image's filename (If only 1 image to delete, set the same as the \code{imgStart}).}

\item{shortcut}{The shortcut vector that generate by \code{\link{setShortcut}}.}
}
\description{
A function of "Labeling Assistant".\cr
Delete specific labels combination on images IN \code{filename} ORDER! Hence, DO NOT use "Random" to sort files on BIIGLE, otherwise you may misleading yourself which image's label you are going to delete.\cr
NOTE: Need to \code{\link{setVol}} and \code{\link{setShortcut}} first!
}
\examples{
\dontrun{
setVol(url = "https://seaimage.oc.ntu.edu.tw",
       treeIDs = 5,
       auth = myAuth,
       vol = "odbiigle") # only need to run 1 time
sho1 <- setShortcut(c("Flat"))
delLabs(url = "https://seaimage.oc.ntu.edu.tw",
        auth = myAuth,
        imgStart = "2006_10_07_16_29_30.jpg",
        imgEnd = "2006_10_07_16_29_50.jpg",
        shortcut = sho1)
}
}
