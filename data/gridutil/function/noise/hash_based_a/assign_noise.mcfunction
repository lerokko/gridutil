execute store result score $cell_x integer run data get entity @s Pos[0]
execute store result score $cell_z integer run data get entity @s Pos[2]
function gridutil:noise/hash_based_a/calc
scoreboard players operation @s cell_noise_1 = $noise integer