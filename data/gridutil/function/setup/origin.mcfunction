$forceload add $(x) $(z)
$summon marker $(x) $(y) $(z) {Tags:[grid_cell,origin,unprimed]}

execute as @e[limit=1,tag=origin] run function gridutil:generation/step/assign_guid_and_prime

tp @p @e[limit=1,tag=origin]

execute as @e[limit=1,tag=origin] run function gridutil:generation/step