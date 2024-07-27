#> mplights:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute if items entity @s container.0 #mplights:_/register[minecraft:custom_data~{_:true}] run return 0

execute if items entity @s container.0 #mplights:_/campfires run return run execute if data storage mplights:settings {campfire:{start_unlit:true}} run data modify entity @s item.components."minecraft:block_state".lit set value "false"
execute if items entity @s container.0 #mplights:_/torches run return run function mplights:_/xtem/func/unplaceable