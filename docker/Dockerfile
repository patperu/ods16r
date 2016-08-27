## Based on rocker/hadleyverse maintained by Carl Boettiger and Dirk Eddelbuettel
FROM rocker/hadleyverse

MAINTAINER "Patrick Hausmann" patrick.hausmann@covimo.de

## install the required R packages
RUN Rscript -e 'install.packages(c("ckanr", "devtools"), dependencies = TRUE)'
RUN Rscript -e 'install.packages(c("spatstat", "ncf"), dependencies = TRUE)'
RUN Rscript -e 'install.packages(c("sp", "rgdal", "ggmap", "raster", "gplots", "gstat", "spdep"), dependencies = TRUE)'
RUN Rscript -e 'install.packages(c("jsonlite", "data.table"), dependencies = TRUE)'
RUN Rscript -e 'devtools::install_github("ropensci/geojsonio")'
RUN Rscript -e 'devtools::install_github("ropenscilabs/gtfsr")'
RUN Rscript -e 'devtools::install_github("rstudio/leaflet")'
RUN Rscript -e 'devtools::install_github("ropensci/lawn")'
RUN Rscript -e 'devtools::install_github("hrbrmstr/overpass")'
RUN Rscript -e 'devtools::install_github("ropensci/sofa")'
RUN Rscript -e 'devtools::install_github("bokeh/rbokeh")'
RUN Rscript -e 'devtools::install_github("sjmgarnier/viridis")'
RUN Rscript -e 'devtools::install_github("patperu/AriaToscana")'
RUN Rscript -e 'devtools::install_github("patperu/ropencoesione")'
RUN apt-get update \
&& apt-get install -y sshpass
