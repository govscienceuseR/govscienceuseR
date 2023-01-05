#' Update the \pkg{govscienceuseR} toolkit
#' 
#' A wrapper around \code{\link[devtools]{update_packages}} to update the core component
#' packages of the \pkg{govscienceuseR} to their latest versions.
#' 
#' Updates the core component packages of govscienceuseR toolkit, using
#' \code{\link[utils]{setRepositories}} and \code{\link[devtools]{update_packages}}.  For
#' the list of packages automatically updated, see \code{\link[govscienceuseR]{govscienceuseR}}.
#' 
#' This function should be called immediately after restarting R, 
#' since there are no good ways to update packages once they are loaded.
#' 
#' With no additional arguments specified, the function will update the
#' packages from Github. This will install from the binaries hosted at
#' \url{https://govscienceuseR.github.io}. Please report any bugs on 
#' the GitHub package repository.
#' 
#' @param ask,checkBuilt Arguments to \code{\link[devtools-remote-reexports]{devtools::update_packages}}
#' documentation. The defaults are different from those of that function.
#' @param \dots Additional arguments to be passed to
#' \code{\link[devtools-remote-reexports]{devtools::update_packages}}.
#' @return \code{update_govscienceuseR} returns NULL invisibly.
#' @seealso \code{\link[devtools-remote-reexports]{devtools::update_packages}}, \code{\link{setRepositories}}
#' @keywords utilities
#' @examples
#' 
#' \dontrun{
#' # Update from Github
#' govscienceuseR::update_govscienceuseR()
#' }
#'
#' @importFrom tools package_dependencies
#' @importFrom utils old.packages setRepositories
#' @importFrom devtools update_packages dev_packages
#' @export
update_govscienceuseR <- function(..., ask = FALSE, checkBuilt=TRUE){
  packs = c('referenceExtract','referenceClassify','indexBuild','referenceMatch')  
  repos = "https://github.com/govscienceuseR/"
  for(p in packs){update_packages(p,
                  ask = ask, checkBuilt = checkBuilt, ...)}
  
}

