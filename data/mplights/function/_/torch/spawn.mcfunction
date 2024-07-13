#> mplights:_/torch/spawn
#--------------------
# _/tick
#--------------------

tag @s add mplights-torch
tag @s add _
tag @s add __
data modify entity @s Item.components."minecraft:custom_data".mplights._.UUID set from entity @s UUID
execute if items entity @s container.0 minecraft:torch run return run function mplights:_/torch/normal/spawn
execute if items entity @s container.0 minecraft:soul_torch run return run function mplights:_/torch/soul/spawn