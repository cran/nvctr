% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/p_EB_E2n_EB_E.R
\name{p_EB_E2n_EB_E}
\alias{p_EB_E2n_EB_E}
\title{Convert cartesian position vector in meters to n-vector}
\usage{
p_EB_E2n_EB_E(p_EB_E, a = 6378137, f = 1/298.257223563)
}
\arguments{
\item{p_EB_E}{Cartesian position vector from E to B, decomposed in E (3x1 vector) (m)}

\item{a}{Semi-major axis of the Earth ellipsoid (m, default [WGS-84] 6378137)}

\item{f}{Flattening of the Earth ellipsoid (no unit, default [WGS-84] 1/298.257223563)}
}
\value{
n-vector representation of position B, decomposed in E (3x1 vector) (no unit) and
        depth of system B relative to the ellipsoid (z_EB = -height)
}
\description{
The position of B (typically body) relative to E (typically Earth) is given
as cartesian position vector p_EB_E, in meters ("ECEF-vector").
}
\details{
The function converts to n-vector, n_EB_E and its depth, z_EB.

The calculation is exact, taking the ellipticity of the Earth into account.
It is also nonsingular as both n-vector and p-vector are nonsingular
(except for the center of the Earth).
The default ellipsoid model used is WGS-84, but other ellipsoids (or spheres) might be specified.
}
\examples{
p_EB_E <- 6371e3 * c(0.9, -1, 1.1)
(n_EB_E <- p_EB_E2n_EB_E(p_EB_E))

}
\references{
Kenneth Gade \href{https://www.navlab.net/Publications/A_Nonsingular_Horizontal_Position_Representation.pdf}{A Nonsingular Horizontal Position Representation}.
\emph{The Journal of Navigation}, Volume 63, Issue 03, pp 395-417, July 2010.
}
\seealso{
\code{\link{n_EB_E2p_EB_E}}, \code{\link{n_EA_E_and_p_AB_E2n_EB_E}} and
         \code{\link{n_EA_E_and_n_EB_E2p_AB_E}}
}
