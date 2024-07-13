#> mplights:_/light/main
#--------------------
# _/tick
#--------------------

execute unless score @s _mplights-light_level matches 1.. run return run function mplights:_/light/kill

scoreboard players reset @s _mplights-light_level