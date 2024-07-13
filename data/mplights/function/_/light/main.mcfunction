#> mplights:_/light/main
#--------------------
# _/tick
#--------------------

execute unless score @s _mplights-light_level matches 1.. run function mplights:_/light/replace
execute unless score @s _mplights-light_level matches 1.. run return run kill @s

execute if block ~ ~ ~ minecraft:light if score @s _mplights-light_level = @s _mplights-p_light_level run return run scoreboard players reset @s _mplights-light_level

execute if block ~ ~ ~ minecraft:light run function mplights:_/light/replace

execute store result storage mplights:var light.with.level int 1 run scoreboard players get @s _mplights-light_level

execute store result score *light.placed -mplights if block ~ ~ ~ #mplights:light_replaceable/water run function mplights:_/light/water/main with storage mplights:var light.with
execute unless score *light.placed -mplights matches 1.. if block ~ ~ ~ #mplights:light_replaceable/air run function mplights:_/light/air/main with storage mplights:var light.with

scoreboard players reset *light.placed -mplights
scoreboard players operation @s _mplights-p_light_level = @s _mplights-light_level
scoreboard players reset @s _mplights-light_level
data remove storage mplights:var light