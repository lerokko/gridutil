# west -x
$execute positioned ~-$(gridsize) ~ ~ if entity @e[distance=..0.1,tag=grid_cell] run return fail
$execute positioned ~-$(gridsize) ~ ~ unless entity @e[distance=..0.1,tag=grid_cell] run function gridutil:generation/step/place_marker
$execute positioned ~-$(gridsize) ~ ~ run particle angry_villager ~ ~ ~ 0.0 0.0 0.0 0.01 10 force