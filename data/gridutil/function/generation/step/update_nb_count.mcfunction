scoreboard players set @s nb_count 0
$execute positioned ~ ~ ~-$(gridsize) if entity @e[distance=..0.1,tag=grid_cell] run scoreboard players add @s nb_count 1
$execute positioned ~ ~ ~$(gridsize) if entity @e[distance=..0.1,tag=grid_cell] run scoreboard players add @s nb_count 1
$execute positioned ~-$(gridsize) ~ ~ if entity @e[distance=..0.1,tag=grid_cell] run scoreboard players add @s nb_count 1
$execute positioned ~$(gridsize) ~ ~ if entity @e[distance=..0.1,tag=grid_cell] run scoreboard players add @s nb_count 1