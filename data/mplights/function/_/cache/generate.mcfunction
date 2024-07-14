#> mplights:_/cache/generate
#--------------------
# ./load
#--------------------

function mplights:_/cache/generate.1 with storage mplights:settings torch.burnout_percent


execute store result score *cache.max_brightness.normal --mplights run data get storage mplights:settings torch.brightness.normal.max
execute store result score *x -mplights run data get storage mplights:settings torch.brightness.normal.max
execute store result score *cache.min_brightness.normal --mplights run data get storage mplights:settings torch.brightness.normal.min
scoreboard players operation *x -mplights -= *cache.min_brightness.normal --mplights
scoreboard players operation *cache.fade_segment.normal --mplights = *cache.burnout.normal --mplights
scoreboard players operation *cache.fade_segment.normal --mplights /= *x -mplights

execute store result score *cache.max_brightness.soul --mplights run data get storage mplights:settings torch.brightness.soul.max
execute store result score *x -mplights run data get storage mplights:settings torch.brightness.soul.max
execute store result score *cache.min_brightness.soul --mplights run data get storage mplights:settings torch.brightness.soul.min
scoreboard players operation *x -mplights -= *cache.min_brightness.soul --mplights
scoreboard players operation *cache.fade_segment.soul --mplights = *cache.burnout.soul --mplights
scoreboard players operation *cache.fade_segment.soul --mplights /= *x -mplights

execute store result score *cache.stack_divisor.normal --mplights run data get storage mplights:settings torch.burn_time_per_additional.normal
execute store result score *cache.stack_divisor.soul --mplights run data get storage mplights:settings torch.burn_time_per_additional.soul

# data
data modify storage mplights:data _.cache.items.recoverable_torch set value {"minecraft:custom_data":{_:true, mplights:{itemid:1}, }, "minecraft:rarity":"uncommon", "minecraft:item_name":"Burnt Torch", "minecraft:lore":['[{"text":"Recoverable", "color":"gray"}]']}
data modify storage mplights:data _.cache.items.burnt_torch set value {"minecraft:custom_data":{_:true, mplights:{itemid:2}, }, "minecraft:rarity":"uncommon", "minecraft:item_name":"Burnt Torch", "minecraft:lore":['[{"text":"Unrecoverable", "color":"dark_gray"}]']}

scoreboard players reset *x -mplights