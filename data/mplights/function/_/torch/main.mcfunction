#> mplights:_/torch/main
#--------------------
# _/tick
#--------------------

# debug
scoreboard players set @s _mplights-light_level 15

execute align xyz unless entity @e[type=marker,limit=1,tag=_mplights-light,distance=..0.1] run summon marker ~ ~ ~ {Tags:["_mplights-light"]}
execute align xyz run scoreboard players operation @n[type=marker,tag=_mplights-light] _mplights-light_level = @s _mplights-light_level

data merge entity @s {Age:10s, PickupDelay:2000s}
scoreboard players add @s mplights-burning_time 1

