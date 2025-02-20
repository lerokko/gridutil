scoreboard players add $GRIDUTIL_CONFIG guid 1
scoreboard players operation @s guid = $GRIDUTIL_CONFIG guid

scoreboard players set @s pop_step 1
scoreboard players set @s nb_count 0

tag @s remove unprimed