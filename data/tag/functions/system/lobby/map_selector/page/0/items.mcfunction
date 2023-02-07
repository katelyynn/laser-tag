# LASERTAG map selector
## page 0 (default)


data modify block -10 150 0 Items set value {}

# fill container
## map sizes
data modify block -10 150 0 Items merge from storage tag:maps sizes
## maps
data modify block -10 150 0 Items merge from storage tag:maps maps