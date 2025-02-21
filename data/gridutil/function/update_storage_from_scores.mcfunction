# fetching scores and storing them in a macro accessible way.
# This allos player so just configure the on the fly with /scoreboard players set $GRIDUTIL_CONFIG <config_setting> <new_value>
execute store result storage gridutil:config cells_per_tick int 1 run scoreboard players get $GRIDUTIL_CONFIG cells_per_tick
execute store result storage gridutil:config generation_distance int 1 run scoreboard players get $GRIDUTIL_CONFIG generation_distance
execute store result storage gridutil:config gridsize int 1 run scoreboard players get $GRIDUTIL_CONFIG gridsize
schedule function gridutil:update_storage_from_scores 4t replace