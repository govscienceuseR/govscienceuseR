#' Install the \pkg{govscienceuseR} toolkit
#' 
#' A wrapper around \code{\link[devtools]{install_github}} to install the core component
#' packages of the \pkg{govscienceuseR}.
#' 
#' Installes the core component packages of govscienceuseR toolkit, using
#' \code{\link[utils]{setRepositories}} and \code{\link[devtools]{update_packages}}.  For
#' the list of packages automatically updated, see \code{\link[govscienceuseR]{govscienceuseR}}.
#' 
#' With no additional arguments specified, this will install from the binaries hosted at
#' \url{https://govscienceuseR.github.io}. Please report any bugs on 
#' the GitHub package repository.
#' 
#' @param ask,checkBuilt Arguments to \code{\link[devtools-remote-reexports]{devtools::update_packages}}
#' documentation. The defaults are different from those of that function.
#' @param \dots Additional arguments to be passed to
#' \code{\link[devtools-remote-reexports]{devtools::install_github}}.
#' @return \code{install_govscienceuseR} returns NULL invisibly.
#' @seealso \code{\link[devtools-remote-reexports]{devtools::install_github}}, \code{\link{setRepositories}}
#' @keywords utilities
#' @examples
#' 
#' \dontrun{
#' # Install from Github
#' govscienceuseR::install_govscienceuseR()
#' }
#'
#' @importFrom devtools install_github
#' @export
install_govscienceuseR <- function(..., ask = FALSE, checkBuilt=TRUE){
  packs = c('referenceExtract','referenceClassify','indexBuild','referenceMatch')  
  repos = "https://github.com/govscienceuseR/"
  for(p in packs){install_github(paste0('govscienceuseR/',p),
                  ask = ask, checkBuilt = checkBuilt, ...)}
}

