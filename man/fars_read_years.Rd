% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Roxygen2 fars_functions.R
\name{fars_read_years}
\alias{fars_read_years}
\title{Function "fars_read_years" - read data by years from the FARS files}
\usage{
fars_read_years(years)
}
\arguments{
\item{years}{a vector with the list of years}
}
\value{
This function returns data frames or NULL if the year \code{year} is not valid
}
\description{
. This function reads data from FARS files. It opens specified CSV file
which name generated by \link{fars_readmake_filename} finction and it use
 \link{fars_read} function to open the file. It returns the data frames by specified
 years. if any year specified is not walid it shows error messege "invalid year: "
}
\examples{
\dontrun{
fars_read_years(2013:2014)}

}
\seealso{
\link{fars_read}

\link{make_filename}

\link{fars_summarize_years}
}