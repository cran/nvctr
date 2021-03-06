% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R2zyx.R
\name{R2zyx}
\alias{R2zyx}
\title{Find the three angles about new axes in the zyx order from a rotation matrix}
\usage{
R2zyx(R_AB)
}
\arguments{
\item{R_AB}{a 3x3 rotation matrix (direction cosine matrix) such that the
relation between a vector v decomposed in A and B is
given by: v_A = R_AB * v_B}
}
\value{
z,y,x angles of rotation about new axes (rad)
}
\description{
The 3 angles \code{z}, \code{y}, \code{x} about new axes (intrinsic) in the order z-y-x are
found from the rotation matrix \code{R_AB}. The angles (called Euler angles or
Tait–Bryan angles) are defined by the following procedure of successive rotations:
\enumerate{
 \item Given two arbitrary coordinate frames A and B, consider a temporary frame
       T that initially coincides with A. In order to make T align with B, we
       first rotate T an angle z about its z-axis (common axis for both A and T).
 \item Secondly, T is rotated an angle y about the NEW y-axis of T. Finally, T
       is rotated an angle x about its NEWEST x-axis.
 \item The final orientation of T now coincides with the orientation of B.
}
The signs of the angles are given by the directions of the axes and the right hand rule.
}
\details{
Note that if A is a north-east-down frame and B is a body frame, we
have that z=yaw, y=pitch and x=roll.
}
\examples{
zyx2R(rad(1), rad(-2), rad(-3))

}
\references{
Kenneth Gade \href{https://www.navlab.net/Publications/A_Nonsingular_Horizontal_Position_Representation.pdf}{A Nonsingular Horizontal Position Representation}.
\emph{The Journal of Navigation}, Volume 63, Issue 03, pp 395-417, July 2010.
}
\seealso{
\code{\link{zyx2R}}, \code{\link{xyz2R}} and \code{\link{R2xyz}}.
}
