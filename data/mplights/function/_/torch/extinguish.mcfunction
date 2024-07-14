#> mplights:_/torch/extinguish
#--------------------
# ./main
#--------------------

kill @s
execute if entity @s[tag=_mplights-burning_out] run return 1

playsound block.fire.extinguish ambient @a ~ ~ ~ 0.4 1.4
data modify storage mplights:var extinguish.stick set value {id:"minecraft:stick",count:1}
data modify storage mplights:var extinguish.stick.count set from entity @s Item.count
data modify storage mplights:var extinguish.motion set from entity @s Motion
function mplights:_/torch/spawn_stick with storage mplights:var extinguish