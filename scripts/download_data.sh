# make /data folder and subfolders
mkdir -p /data
mkdir -p /tutorial
mkdir -p /tutorial/figure

# Copy the data directory.

# Copy the tutorial directory.

# Copy figures.
wget --directory-prefix=/tutorial/figure https://github.com/ropensci/magick/raw/master/img/Rlogo-banana.gif

# set privilages - everybody can do everything
chmod --recursive 777 /data
chmod --recursive 777 /tutorial
