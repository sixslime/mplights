#>mplights:settings

#declare storage mplights:settings
data modify storage mplights:settings PERSIST set value false

#>======[ torch ]======
#>-------------------
#> torch.burn_time : {normal: int, soul: int}
#-------------------
# ~ how long (in ticks) torches last when thrown.
#-------------------
# - 
#-------------------
data modify storage mplights:settings torch.burn_time set value {normal: 9600, soul: 24000}
#>-------------------

#>-------------------
#> torch.burnout_percent : {normal: float, soul: float}
#-------------------
# ~ percentage of torch.burn_time at which torches should start to burn out (fading in brightness).
#-------------------
# - once a torch is "burning out", it will no longer drop a stick if extinguished
#-------------------
data modify storage mplights:settings torch.burnout_percent set value {normal: 0.5f, soul: 0.5f}
#>-------------------

#>-------------------
#> torch.brightness : {normal: {min: int, max :int}, soul: {min: int, max: int}
#-------------------
# ~ min/max brightness of torches. 
#-------------------
# - torches start at max brightness, then once they are burning out, they linearly approach their min brightness.
# - values must be between 1-15.
#-------------------
data modify storage mplights:settings torch.brightness set value {normal:{min:5, max:14}, soul:{min:4, max:10}}
#>-------------------

#>-------------------
#> torch.burn_time_per_additional : {normal: int, soul: int}
#-------------------
# ~ how long (in ticks) each torch past the first adds to a stack-of-torch's burn time.
#-------------------
# - 
#-------------------
data modify storage mplights:settings torch.burn_time_per_additional set value {normal:1200, soul: 4800}
#>-------------------

#>-------------------
#> torch.extinguish_in_water : {normal: bool, soul: bool}
#-------------------
# ~ torches will extinguish when in a water block.
#-------------------
# - 
#-------------------
data modify storage mplights:settings torch.extinguish_in_water set value {normal:true, soul:false}
#>-------------------
#>====================

#>-------------------
#> campfire.start_unlit : true
#-------------------
# ~ modify campfire items to be unlit when placed.
#-------------------
# - if changed, will only affect new campfire items.
#-------------------
data modify storage mplights:settings campfire.start_unlit set value true
#>-------------------