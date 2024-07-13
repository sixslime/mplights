#> mplights:_/light/replace
#--------------------
# ./main
#--------------------

execute if block ~ ~ ~ minecraft:light[waterlogged=false] run setblock ~ ~ ~ air
execute if block ~ ~ ~ minecraft:light[waterlogged=true] run setblock ~ ~ ~ water