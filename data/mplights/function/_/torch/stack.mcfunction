#> mplights:_/torch/stack
#--------------------
# ./normal/spawn
# ./soul/spawn
#--------------------

execute store result score *stack.count -mplights run data get entity @s Item.count
scoreboard players remove *stack.count -mplights 1
scoreboard players operation *stack.count -mplights *= *stack.mult -mplights

scoreboard players operation @s mplights-burning_time += *stack.count -mplights

scoreboard players reset *stack.count -mplights
scoreboard players reset *stack.mult -mplights