library(tidyverse)
setwd("~/OneDrive - Biogen/packages/r_package_survey/R_package_risk_survey/")

validRpkgs <- c("abind", "ape", "askpass", "assertthat", "backports", "base64enc", 
                "BH", "BiocManager", "bit", "bit64", "blob", "brew", "brio", 
                "broom", "buds", "callr", "cellranger", "checkmate", "cli", "clipr", 
                "colorspace", "commonmark", "corpcor", "covr", "cpp11", "cranlogs", 
                "crayon", "credentials", "crosstalk", "crul", "cubature", "curl", 
                "data.table", "DBI", "dbplyr", "desc", "devtools", "diffobj", 
                "digest", "DistatisR", "DoseFinding", "dplyr", "DT", "ellipsis", 
                "evaluate", "exact2x2", "exactci", "fansi", "farver", "fauxpas", 
                "fontBitstreamVera", "fontLiberation", "fontquiver", "forcats", 
                "freetypeharfbuzz", "fs", "gdtools", "generics", "gert", "ggplot2", 
                "gh", "gitcreds", "glue", "gridExtra", "gt", "gtable", "haven", 
                "hexbin", "highr", "hms", "htmltools", "htmlwidgets", "httpcode", 
                "httr", "huxtable", "ini", "isoband", "jsonlite", "knitr", "labeling", 
                "later", "lazyeval", "lifecycle", "lme4", "lubridate", "magrittr", 
                "mapproj", "maps", "markdown", "MCMCglmm", "memoise", "mime", 
                "miniCRAN", "minqa", "modelr", "multcomp", "munsell", "mvtnorm", 
                "nloptr", "numDeriv", "openssl", "openxlsx", "pdftools", "pharmaRTF", 
                "pillar", "pkgbuild", "pkgconfig", "pkgload", "plotly", "praise", 
                "prettyGraphs", "prettyunits", "princurve", "processx", "progress", 
                "promises", "ps", "purrr", "qpdf", "quadprog", "R6", "rappdirs", 
                "rcmdcheck", "RColorBrewer", "Rcpp", "RcppEigen", "readr", "readxl", 
                "rematch", "rematch2", "remotes", "reprex", "rex", "rlang", "rmarkdown", 
                "roxygen2", "rprojroot", "Rsolnp", "rstudioapi", "rversions", 
                "rvest", "sandwich", "sass", "scales", "selectr", "sessioninfo", 
                "spongebob", "ssanv", "statmod", "stringi", "stringr", "sys", 
                "systemfonts", "tensorA", "testthat", "TH.data", "tibble", "tidyr", 
                "tidyselect", "tidyverse", "tinytex", "triebeard", "truncnorm", 
                "urltools", "usethis", "utf8", "vctrs", "vdiffr", "viridisLite", 
                "waldo", "webmockr", "webshot", "whisker", "withr", "xfun", "xml2", 
                "xopen", "yaml", "zip", "zoo", "abind", "arrow", "arsenal", "askpass", 
                "assertthat", "backports", "base", "base64enc", "base64url", 
                "batchtools", "bayesplot", "beeswarm", "BH", "binom", "bit", 
                "bit64", "bitops", "blob", "boot", "brew", "bridgesampling", 
                "brio", "brms", "Brobdingnag", "broom", "broom.helpers", "bslib", 
                "cachem", "callr", "car", "carData", "caret", "caTools", "cellranger", 
                "checkmate", "class", "cli", "clipr", "cluster", "coda", "codetools", 
                "colorspace", "colourpicker", "commonmark", "compiler", "conquer", 
                "corrplot", "covr", "cowplot", "cpp11", "crayon", "credentials", 
                "crosstalk", "curl", "data.table", "datasets", "DBI", "dbplyr", 
                "desc", "devtools", "dials", "DiceDesign", "diffobj", "digest", 
                "DoseFinding", "dplyr", "DT", "dygraphs", "e1071", "ellipsis", 
                "emmeans", "estimability", "evaluate", "Exact", "exact2x2", "exactci", 
                "exactRankTests", "fansi", "farver", "fastmap", "forcats", "foreach", 
                "forecast", "foreign", "formatR", "Formula", "fracdiff", "fs", 
                "furrr", "futile.logger", "futile.options", "future", "gam", 
                "gamm4", "generics", "gert", "GGally", "ggbeeswarm", "ggplot2", 
                "ggpubr", "ggrepel", "ggridges", "ggsci", "ggsignif", "gh", "gitcreds", 
                "glmnet", "globals", "glue", "gower", "GPfit", "gplots", "graphics", 
                "grDevices", "grid", "gridExtra", "gt", "gtable", "gtools", "gtsummary", 
                "hardhat", "haven", "highr", "Hmisc", "hms", "htmlTable", "htmltools", 
                "htmlwidgets", "httpuv", "httr", "huxtable", "igraph", "infer", 
                "ini", "inline", "ipred", "isoband", "iterators", "jpeg", "jquerylib", 
                "jsonlite", "KernSmooth", "km.ci", "KMsurv", "knitr", "labeling", 
                "labelled", "lambda.r", "later", "lattice", "latticeExtra", "lava", 
                "lazyeval", "lhs", "lifecycle", "listenv", "lme4", "lmtest", 
                "loo", "lubridate", "magrittr", "maptools", "markdown", "MASS", 
                "Matrix", "MatrixModels", "matrixStats", "maxstat", "mcmc", "memoise", 
                "methods", "mgcv", "mice", "mime", "miniUI", "minqa", "modeldata", 
                "ModelMetrics", "modelr", "multcomp", "munsell", "mvtnorm", "nleqslv", 
                "nlme", "nloptr", "nnet", "numDeriv", "officer", "openssl", "openxlsx", 
                "optimx", "packrat", "parallel", "parallelly", "parsnip", "pbkrtest", 
                "pdftools", "pharmaRTF", "pheatmap", "pillar", "PK", "pkgbuild", 
                "pkgconfig", "pkgload", "PKPDmodels", "plogr", "plyr", "png", 
                "polynom", "pool", "praise", "prettyunits", "pROC", "processx", 
                "prodlim", "progress", "projpred", "promises", "ps", "purrr", 
                "qpdf", "quadprog", "quantmod", "quantreg", "R.methodsS3", "R.oo", 
                "R6", "randomForest", "rappdirs", "rcmdcheck", "RColorBrewer", 
                "Rcpp", "RcppArmadillo", "RcppEigen", "RcppParallel", "readr", 
                "readxl", "recipes", "rematch", "rematch2", "remotes", "repr", 
                "reprex", "reshape", "reshape2", "rex", "rio", "rjags", "rlang", 
                "RMariaDB", "rmarkdown", "rngtools", "RODBC", "rootSolve", "roxygen2", 
                "rpart", "rprojroot", "rsample", "rsconnect", "Rsolnp", "RSQLite", 
                "rstan", "rstantools", "rstatix", "rstudioapi", "rtf", "Rtsne", 
                "rversions", "rvest", "sandwich", "sas7bdat", "sass", "scales", 
                "selectr", "sessioninfo", "shape", "shiny", "shinyjs", "shinystan", 
                "shinythemes", "skimr", "slider", "snow", "sourcetools", "sp", 
                "SparseM", "spatial", "splines", "SQUAREM", "ssanv", "StanHeaders", 
                "statmod", "stats", "stats4", "stringi", "stringr", "survival", 
                "survminer", "survMisc", "sys", "table1", "tcltk", "testthat", 
                "TH.data", "threejs", "tibble", "tidymodels", "tidyr", "tidyselect", 
                "tidyverse", "timeDate", "tinytex", "tools", "truncnorm", "tseries", 
                "TTR", "tune", "urca", "usethis", "utf8", "utils", "uuid", "V8", 
                "vctrs", "VennDiagram", "vipor", "viridis", "viridisLite", "waldo", 
                "warp", "webshot", "whisker", "withr", "workflows", "writexl", 
                "xfun", "XML", "xml2", "xopen", "xtable", "xts", "yaml", "yardstick", 
                "zip", "zoo")

if(!file.exists("ap.rds")){
  ap <- as.data.frame(available.packages())
  saveRDS(ap, "ap.rds")
} else {
  ap <- readRDS("ap.rds")
}

dwlds <- lapply(split(ap$Package, ceiling(seq_along(ap$Package)/500)), 
                function(x){
                  cranlogs::cran_downloads(x, "last-month")
                })
dwlds <- do.call(rbind, dwlds)
ap <- dwlds %>% 
  group_by(package) %>% 
  summarise(count=sum(count)) %>% 
  right_join(., ap, by = c("package" = "Package")) %>% 
  filter(package %in% validRpkgs | count >= 36692)


qs <- dplyr::bind_rows(data.frame(question = c(rep("How many years of experience with R do you have?", 4),
                                        rep("What sector are you currently in?", 6),
                                        rep("What best describes your current role?", 6),
                                        rep("Have you ever published an R package (either public or private)?", 2)),
                           option = c("< 1","1-3","4-7","> 7", 
                                      "Academia","Government","Biotech/Pharma", "Healthcare", "Non-profit", "Other",
                                      "Student", "Statistician","Statistical Programmer", "Data Scientist","Quality Lead","Manager/Director/VP",
                                      "Yes","No"),
                           input_type = c(rep("mc", 16), "y/n", "y/n"),
                           input_id = c(rep("yearsExp", 4), rep("industry", 6), rep("role",6), rep("package",2)),
                           dependence = NA,
                           dependence_value = NA,
                           required = T,
                           stringsAsFactors = F),
                data.frame(question = rep(ap$package, each = 6),
                           option = rep(c("NA","1 - (Lowest Risk/Highest Quality)",2:4, "5 - (Highest Risk/Lowest Quality)"), length(ap$package)),
                           input_type = c("mc"),
                           input_id = rep(ap$package, each = 6),
                           dependence = NA,
                           dependence_value = NA,
                           required = F,
                           stringsAsFactors = F) 
)
saveRDS(qs, "qs.rds")
