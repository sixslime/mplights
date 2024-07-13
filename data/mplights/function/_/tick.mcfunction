#>mplights:_/load
#--------------------
# @TICK
#--------------------

schedule function mplights:_/tick 1t

execute as @e[type=item, tag=!_] if items entity @s container.0 #mplights:_/torches[!custom_data~{_:true}] at @s run function mplights:_/torch/spawn
execute as @e[type=item,tag=mplights-torch] at @s positioned ~ ~.2 ~ run function mplights:_/torch/main
execute as @e[type=marker,tag=_mplights-light] at @s run function mplights:_/light/main