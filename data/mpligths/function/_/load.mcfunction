#>mplights:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mplights load-status 1

# settings
execute unless data storage mplights:settings {PERSIST:true} run function mplights:settings

#declare storage mplights:var
#declare storage mplights:in
#declare storage mplights:out
#declare storage mplights:const
#declare storage mplights:data
#declare storage mplights:hook

# scoreboards
scoreboard objectives add -mplights dummy
scoreboard objectives add --mplights dummy
#scoreboard objectives add mplights-scoreboard dummy