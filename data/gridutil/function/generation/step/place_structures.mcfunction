# this is run as a marker that can place a structure safely
# uncomment the line below for debugging
execute at @s as @s if score $GRIDUTIL_CONFIG debug_structures matches 1 run setblock ~ ~4 ~ minecraft:glowstone
execute if score $GRIDUTIL_CONFIG debug_structures matches 1 as @s positioned as @s run particle angry_villager ~ ~4 ~ 0.2 0.2 0.2 0.02 30 force

function #gridutil:generate_at_marker

scoreboard players set @s pop_step 3 
scoreboard players operation @s cell_version = $GRIDUTIL_CONFIG cell_version