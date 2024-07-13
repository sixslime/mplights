#> mplights:_/torch/normal/fading
#--------------------
# _/torch/fading
#--------------------

execute if score @s mplights-burning_time > *cache.burnout.normal --mplights run return run scoreboard players operation @s _mplights-light_level = *cache.max_brightness.normal --mplights

scoreboard players operation *fading.brightness -mplights = @s mplights-burning_time
scoreboard players operation *fading.brightness -mplights /= *cache.fade_segment.normal --mplights
scoreboard players operation *fading.brightness -mplights += *cache.min_brightness.normal --mplights

scoreboard players operation @s _mplights-light_level = *fading.brightness -mplights

scoreboard players reset *fading.brightness -mplights