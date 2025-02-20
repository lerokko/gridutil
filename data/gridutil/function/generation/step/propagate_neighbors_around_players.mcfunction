$execute as @e[scores={nb_count=0..3},tag=grid_cell] positioned as @s if entity @p[distance=..$(generation_distance)] run function gridutil:generation/step/propagate_neighbors/north with storage gridutil:config

$execute as @e[scores={nb_count=0..3},tag=grid_cell] positioned as @s if entity @p[distance=..$(generation_distance)] run function gridutil:generation/step/propagate_neighbors/south with storage gridutil:config

$execute as @e[scores={nb_count=0..3},tag=grid_cell] positioned as @s if entity @p[distance=..$(generation_distance)] run function gridutil:generation/step/propagate_neighbors/east with storage gridutil:config

$execute as @e[scores={nb_count=0..3},tag=grid_cell] positioned as @s if entity @p[distance=..$(generation_distance)] run function gridutil:generation/step/propagate_neighbors/west with storage gridutil:config