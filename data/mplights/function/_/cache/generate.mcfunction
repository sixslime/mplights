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

scoreboard players reset *x -mplights