make_pdf <- function(slides){
library(webshot)
path <- paste0("docs/slides/", slides)
file_name <- paste0("file://", normalizePath(paste0(path, ".html")))

webshot(file_name, paste0(path, ".pdf"))
}

make_pdf("lec-slides/04-slr-inf")