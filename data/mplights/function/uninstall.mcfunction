#> mplights:uninstall

scoreboard objectives remove -mplights
scoreboard objectives remove --mplights
scoreboard objectives remove mplights-burning_time
scoreboard objectives remove _mplights-light_level
scoreboard objectives remove _mplights-p_light_level
data remove storage mplights:data _
execute as @e[type=item,tag=mplights-torch] run function mplights:_/torch/extinguish
function mplights:_/tick
schedule clear mplights:_/tick

data remove storage mplights:settings torch
data remove storage mplights:settings PERSIST
data remove storage mplights:settings campfire

data remove storage mplights:data _