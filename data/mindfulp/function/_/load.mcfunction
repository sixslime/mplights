#>mindfulp:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mindfulp load-status 1

# settings
execute unless data storage mindfulp:settings {PERSIST:true} run function mindfulp:settings

#declare storage mindfulp:var
#declare storage mindfulp:in
#declare storage mindfulp:out
#declare storage mindfulp:const
#declare storage mindfulp:data
#declare storage mindfulp:hook

# scoreboards
scoreboard objectives add -mindfulp dummy
scoreboard objectives add --mindfulp dummy
#scoreboard objectives add mindfulp-scoreboard dummy