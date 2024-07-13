#>mplights:settings

#declare storage mplights:settings
data modify storage mplights:settings PERSIST set value false

#>-------------------
#> torch.burn_time : {normal: int, soul: int}
#-------------------
# ~ how long (in ticks) torches last when thrown.
#-------------------
# - 
#-------------------
data modify storage mplights:settings torch.burn_time set value {normal: 6000, soul: 24000}
#>-------------------

#>-------------------
#> torch.burnout_percent : {normal: float, soul: float}
#-------------------
# ~ percentage of torch.burn_time at which torches should start to burn out (fading in brightness).
#-------------------
# - once a torch is "burning out", it will no longer drop a stick if extinguished
#-------------------
data modify storage mplights:settings torch.burnout_percent set value {normal: 0.8f, soul: 0.8f}
#>-------------------

#>-------------------
#> torch.brightness : {normal: {min: int, max :int}, soul: {min: int, max: int}
#-------------------
# ~ min/max brightness of torches. 
#-------------------
# - torches start at max brightness, then once they are burning out, they linearly approach their min brightness.
# - values must be between 1-15.
#-------------------
data modify storage mplights:settings torch.brightness set value {normal:{min:2, max:14}, soul:{min:1, max:10}}
#>-------------------

#>-------------------
#> campfire.start_unlit : true
#-------------------
# ~ modify campfire items to be unlit when placed.
#-------------------
# - 
#-------------------
data modify storage mplights:settings campfire.start_unlit set value true
#>-------------------