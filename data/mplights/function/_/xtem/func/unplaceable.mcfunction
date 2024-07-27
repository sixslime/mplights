#> mplights:_/xtem/func/unplaceable
#--------------------
# _/xtem/register
#--------------------

data modify storage mplights:var unplaceable.attributes append value {type:"player.block_interaction_range", amount: -64f, operation:"add_value", slot:"mainhand", id:"mplights:unplaceable"}
data modify storage mplights:var unplaceable.attributes append from storage mplights:var unplaceable.attributes[0]
data modify storage mplights:var unplaceable.attributes[0].slot set value "offhand"

data modify entity @s item.components."minecraft:attribute_modifiers".modifiers append from storage mplights:var unplaceable.attributes[]
data modify entity @s item.components."minecraft:attribute_modifiers".show_in_tooltip set value false

data remove storage mplights:var unplaceable