#> mplights:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute unless items entity @s container.0 #mplights:_/register[!minecraft:custom_data~{_:true}] run return 0

execute if items entity @s container.0 #mplights:_/campfires run return run execute if data storage mplights:settings {campfires:{start_unlit:true}} run data modify entity @s item.components."minecraft:block_state".lit set value "false"