% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allFunctions.R
\name{plotPathOnAll}
\alias{plotPathOnAll}
\title{Plot a path between two vertices over the full genealogy}
\usage{
plotPathOnAll(path, geneal, ig, colName, colNameY = "", bin = 12,
  edgeCol = "gray84", pathEdgeCol = "seagreen", nodeSize = 3,
  pathNodeSize = 3, pathNodeFont = "bold", nodeCol = "black",
  animate = FALSE)
}
\arguments{
\item{path}{path as returned from getPath() or a vector of two variety names which exist in ig}

\item{geneal}{the full genealogy  (in data frame format)}

\item{ig}{the graph representation of the data genealogy (in igraph format)}

\item{colName}{the name of the column of the data frame that contains the quantitative variable of interest (in character string format)}

\item{colNameY}{the name of the second optional column of the data frame that contains the second optional quantitative variable of interest (in character string format). This optional quantitative variable will be plotted on the vertical axis.}

\item{bin}{the number of bins to determine the vertical positions of nodes (default is 12). For more information on choosing bin size, please visit the ggenealogy vignette}

\item{edgeCol}{color of the non-path edges, default is "gray84"}

\item{pathEdgeCol}{color of the path edges, default is "seagreen"}

\item{nodeSize}{text size of the non-path node labels, default is 3}

\item{pathNodeSize}{text size of the path node labels, default is 3}

\item{pathNodeFont}{font face of text of the path node labels ("plain", "italic", "bold", "bold.italic"), default is "bold"}

\item{nodeCol}{color of the non-path node labels, default is black}

\item{animate}{if the plot will have interactive capabilities, default is FALSE}
}
\description{
This function requires a path and the ig object, and plots the full genealogy 
with the path highlighted.
The image will correctly position the node labels with x-axis representing the node
date, and y-axis representing the node path index. Light grey edges between two nodes
represent parent-child relationships between those nodes. To enhance the visual
understanding of how the path-of-interest fits into the entire graph structure, the
nodes within the path are labelled in boldface, and connected with light-green
boldfaced edges.
}
\examples{
data(sbGeneal)
sb <- sbGeneal[complete.cases(sbGeneal[1:3]),]
ig <- dfToIG(sb)
pathCL <- getPath("Clark", "Lawrence", ig, sb, "yield")
plotPathOnAll(pathCL, sb, ig, "yield", bin = 3, pathEdgeCol = "red") + ggplot2::xlab("Yield")
plotPathOnAll(pathCL, sb, ig, "yield", "devYear") + ggplot2::xlab("Yield") + ggplot2::ylab("Year")
}
\seealso{
\url{https://www.r-project.org} for iGraph information

\code{\link{getPath}} for information on input path building
}

