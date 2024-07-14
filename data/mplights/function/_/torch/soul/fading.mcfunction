#> mplights:_/torch/soul/fading
#--------------------
# _/torch/fading
#--------------------

execute if score @s mplights-burning_time > *cache.burnout.soul --mplights run return run scoreboard players operation @s _mplights-light_level = *cache.max_brightness.soul --mplights

execute if entity @s[tag=!_mplights-burning_out] run function mplights:_/torch/burnout_item

scoreboard players operation *fading.brightness -mplights = @s mplights-burning_time
scoreboard players operation *fading.brightness -mplights /= *cache.fade_segment.soul --mplights
scoreboard players operation *fading.brightness -mplights += *cache.min_brightness.soul --mplights

scoreboard players operation @s _mplights-light_level = *fading.brightness -mplights

scoreboard players reset *fading.brightness -mplights