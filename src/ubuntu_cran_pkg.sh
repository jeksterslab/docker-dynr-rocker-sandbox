#!/bin/bash

set -e

install2.r --error --skipinstalled -n -1 \
  car            \
  deSolve        \
  devtools       \
  fda            \
  fds            \
  ggplot2        \
  knitr          \
  languageserver \
  latex2exp      \
  magrittr       \
  MASS           \
  Matrix         \
  mice           \
  numDeriv       \
  plyr           \
  Rdpack         \
  remotes        \
  reshape2       \
  rmarkdown      \
  Ryacas         \
  stringi        \
  testthat       \
  tibble         \
  tinytex        \
  xtable

R -e "                      \
    install.packages(       \
        c(                  \
          'Rcpp',           \
          'RcppArmadillo',  \
          'RcppGSL'         \
        ),                  \
        repos = 'https://packagemanager.rstudio.com/all/__linux__/jammy/latest', \
        lib = file.path(Sys.getenv('R_HOME'), 'library')                         \
    )                                                                            \
"
