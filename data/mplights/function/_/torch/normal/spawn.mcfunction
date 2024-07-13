#> mplights:_/torch/normal/spawn
#--------------------
# _/torch/spawn
#--------------------

tag @s add mplights-torch.normal

execute store result score *torch.count -mplights run data get entity @s Item.count
scoreboard players remove *torch.count -mplights 1
scoreboard players operation *torch.count -mplights *= *cache.time_per_add.normal --mplights

execute store result score @s mplights-burning_time run data get storage mplights:settings torch.burn_time.normal

scoreboard players operation @s mplights-burning_time += *torch.count -mplights

scoreboard players reset *torch.count -mplights


