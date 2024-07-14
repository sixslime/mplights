#> mplights:_/torch/normal/main
#--------------------
# _/torch/main
#--------------------

function mplights:_/torch/normal/fading
execute if score *cache.extinguish_in_water.normal --mplights matches 1 if block ~ ~ ~ water run function mplights:_/torch/extinguish