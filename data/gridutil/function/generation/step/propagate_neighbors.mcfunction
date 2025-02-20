$execute positioned ~ ~ ~-$(gridsize) unless entity @e[distance=0,tag=grid_cell] run summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}
$execute positioned ~ ~ ~$(gridsize) unless entity @e[distance=0,tag=grid_cell] run summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}
$execute positioned ~$(gridsize) ~ ~ unless entity @e[distance=0,tag=grid_cell] run summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}
$execute positioned ~-$(gridsize) ~ ~ unless entity @e[distance=0,tag=grid_cell] run summon marker ~ ~ ~ {Tags:[grid_cell,unprimed]}