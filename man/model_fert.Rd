% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_fert.R
\name{model_fert}
\alias{model_fert}
\title{Model Fertility Model Schedule.}
\usage{
model_fert(tfr = NULL, x = seq(from = 0, to = 100, by = 1), model = NULL,
  start_fertage = 15, width_fertage = 35, model_ages = "auto")
}
\arguments{
\item{tfr}{Numeric value for total fertitliy rate of the returned age schedule.}

\item{x}{Vector for the sequence of ages.}

\item{model}{Vector of a `model` age specific fertility rates.}

\item{start_fertage}{Numeric value for the start of the fertility age range.}

\item{width_fertage}{Numeric value for the width of the fertility age range.}

\item{model_age}{String value to indicate if model is for fertility age range only or all ages.}
}
\value{
Returns the f(x) values from a model schedule of age specific fertility. The age range for the calculation can take any sequence of positive numbers, such as ages in single or 5-year intervals. The function is primarily intended for use in decomposing a total fertility rate into an age-specific values.

The arguments for the start and width of the fertility age range (\code{start_fertage}, \code{width_fertage}) are used to select where the model distribution is applied over the range of ages given in \code{x}. Ensure that these match those of the model age schedule.

If the model schedule covers both fertility and non-fertility age ranges, set \code{model_age} to \code{all} to ignore the values passed to \code{start_fertage}, \code{start_fertage}, \code{x}. The \code{auto} option attempts to guess, based on the length of the vetor passed to \code{model} and the age groups used in \code{x}.
}
\description{
Scales a `model`` fertility schedule to match a given TFR.
}
\examples{
#single year
f0 <- subset(austria, Year == 2014)$Fx
plot(f0, type = "l")
sum(f0)
f1 <- model_fert(tfr = 2.1, model = f0)
sum(f1)
plot(f1, type = "l")

#five year
f1 <- model_fert(tfr = 3, x = seq(from = 0, to = 100, by = 5), model = un1956$high)
plot(f1, type = "l")
}
\seealso{
\code{\link{gage}} \code{\link{romainuk}} \code{\link{hadwiger}}
}
\author{
Guy J. Abel
}
