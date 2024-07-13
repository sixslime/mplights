#> mplights:_/torch/main
#--------------------
# _/tick
#--------------------

execute if score @s mplights-burning_time matches ..0 run return run function mplights:_/torch/extinguish
execute if entity @s[tag=mplights-torch.normal] run function mplights:_/torch/normal/main
execute if entity @s[tag=mplights-torch.soul] run function mplights:_/torch/soul/main
execute align xyz unless entity @e[type=marker,limit=1,tag=_mplights-light,distance=..0.1] run summon marker ~ ~ ~ {Tags:["_mplights-light"]}
execute align xyz run scoreboard players operation @n[type=marker,tag=_mplights-light,distance=..0.1] _mplights-light_level = @s _mplights-light_level

data merge entity @s {Age:10s, PickupDelay:2000s}

scoreboard players remove @s mplights-burning_time 1

