scoreboard objectives remove gridsize
scoreboard objectives remove origin_x
scoreboard objectives remove origin_y
scoreboard objectives remove origin_z
scoreboard objectives remove cells_per_tick
scoreboard objectives remove generation_distance
scoreboard objectives remove highlight_markers
scoreboard objectives remove auto_stepping
scoreboard objectives remove debug_structures

tellraw @a [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Gridutil has been uninstalled","color":"white"}]
tellraw @a [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Some scoreboards will remain to ensure functionality of data left in the world if you decide to reinstall gridutil again.","color":"white"}]
datapack disable "file/gridutil.zip"