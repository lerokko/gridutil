
summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}
scoreboard players add @s nb_count 1
execute as @e[tag=unprimed,sort=nearest,distance=..0.01] run function gridutil:generation/step/assign_guid_and_prime