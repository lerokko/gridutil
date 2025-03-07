
summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}
scoreboard players add @s nb_count 1
# more experimental duplicate prevention
execute as @e[type=marker,tag=grid_cell,tag=!unprimed,sort=nearest,distance=..0.01,limit=1] at @s run execute positioned as @s at @s run function gridutil:generation/step/delete_unprimed_duplicates with storage gridutil:config
execute as @e[tag=unprimed,sort=nearest,distance=..0.01] run function gridutil:generation/step/assign_guid_and_prime