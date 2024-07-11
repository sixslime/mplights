#> mplights:_/xtem/register
#--------------------
# @hook : xtem:register
#--------------------

execute unless items entity @s container.0 #mplights:_/register[!minecraft:custom_data={_:true}] run return 0

execute if items entity @s container.0 #mplights:_/campfires run item modify entity @s container.0 {function:"minecraft:set_components", components: {"minecraft:block_state":{"lit":"false"}}}