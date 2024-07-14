#> mplights:_/torch/soul/spawn
#--------------------
# _/torch/spawn
#--------------------

tag @s add mplights-torch.soul

execute store result score @s mplights-burning_time run data get storage mplights:settings torch.burn_time.soul

scoreboard players operation *stack.mult -mplights = *cache.time_per_add.soul --mplights
function mplights:_/torch/stack