# Prepare a base image with 'hadleyverse' and 'couchdb'

# Original script - THANK YOU!
# https://github.com/churchill-lab/MouseGen2016/blob/master/scripts/run_one_DO_machine.R

library("analogsea")

d <- docklet_create(size = getOption("do_size", "1gb"),
                    region = getOption("do_region", "fra1"))

# Needed to add this to update the IP address. OTherwise, I got a "network not up yet" error.
d <- droplet(d$id)

# pull images
d %>% docklet_pull("rocker/hadleyverse")
d %>% docklet_pull("klaemo/couchdb:latest")
d %>% docklet_images()

# Make a snapshot of this machine.
d %>%
  droplet_power_off() %>%
  droplet_wait() %>%
  droplet_snapshot(name = "ODS16")

# Destroy the source droplet to see if we can re-make it using the image.
droplet_delete(d)
rm(d)

