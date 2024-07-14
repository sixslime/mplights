#> mplights:_/inventory/on_change
#--------------------
# @advancement : _/inv_change
#--------------------

advancement revoke @s only mplights:_/inv_change

execute unless items entity @s container.* torch[minecraft:custom_data~{mplights:{_:{torch:{}}}}] run return fail

clear @s torch[minecraft:custom_data~{mplights:{_:{torch:{recoverable:false}}}}]
execute store result score *inventory.recovered -mplights run clear @s torch[minecraft:custom_data~{mplights:{_:{torch:{recoverable:true}}}}]
execute unless score *inventory.recovered -mplights matches 1.. run return 0

execute store result storage mplights:var inventory.recovered int 1 run scoreboard players get *inventory.recovered -mplights
function mplights:_/inventory/recover with storage mplights:var inventory

scoreboard players reset *inventory.recovered -mplights
data remove storage mplights:var inventory