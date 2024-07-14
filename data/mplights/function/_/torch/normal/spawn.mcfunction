#> mplights:_/torch/normal/spawn
#--------------------
# _/torch/spawn
#--------------------

tag @s add mplights-torch.normal

execute store result score @s mplights-burning_time run data get storage mplights:settings torch.burn_time.normal

scoreboard players operation *stack.mult -mplights = *cache.time_per_add.normal --mplights
function mplights:_/torch/stack

