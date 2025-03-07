
# If this command is enabled it will show the number of generated markers in the action bar. Useful for debugging.
#title @a actionbar [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"score":{"name":"$GRIDUTIL_CONFIG","objective":"guid"}}]

# SANITY CHECK
# check for overlapping markers
function gridutil:generation/step/_sanity_check_overlap with storage gridutil:config

# experimental test #
#rechecking for any unprimed margers and run init code again
# NOTE: so far this never triggered. it seems unnecessary
execute as @e[tag=unprimed,limit=1] run function gridutil:generation/step/assign_guid_and_prime_fix


# this encapsulation is needed to be able to run this code easily from the game without passing arguemtns as well
function gridutil:generation/step/propagate_neighbors_around_players with storage gridutil:config

#recheck neighbors
execute as @e[scores={nb_count=0..3},tag=grid_cell] positioned as @s if entity @p[distance=..64] run function gridutil:generation/step/update_nb_count with storage gridutil:config

# this encapsulation is needed to be able to run this code easily from the game without passing arguemtns as well
function gridutil:generation/step/find_placement_candidates with storage gridutil:config
#  recursively 1 cell at a time. Loop up to cells_per_tick limit.

execute if score $GRIDUTIL_CONFIG auto_stepping matches 1.. run return run schedule function gridutil:generation/step 1t replace
execute if score $GRIDUTIL_CONFIG auto_stepping matches ..0 run tellraw @p [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Generator advanced by 1 ","color":"white"},{"text":"[Step again]","color":"blue","clickEvent":{"action":"run_command","value":"/function gridutil:generation/step"}},{"text":"  ","color":"aqua"},{"text":"[Unfreeze generator]","color":"blue","clickEvent":{"action":"run_command","value":"/function gridutil:debug/toggle_freezing"}}]