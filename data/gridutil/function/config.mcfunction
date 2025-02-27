tellraw @s [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"]","color":"gold"},{"text":" Configuration:"}]

tellraw @s [{"text":"[Edit]","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $GRIDUTIL_CONFIG cells_per_tick "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to edit"}]}},{"text":" cell_generations_per_tick: ","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Default value: "},{"score":{"name":"$GRIDUTIL_CONFIG","objective":"cells_per_tick"},"color":"aqua"}]}},{"score":{"name":"$GRIDUTIL_CONFIG","objective":"cells_per_tick"}}]

tellraw @s [{"text":"[Edit]","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $GRIDUTIL_CONFIG generation_distance "},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to edit"}]}},{"text":" generation_distance_from_player: ","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Default value: "},{"score":{"name":"$GRIDUTIL_CONFIG","objective":"generation_distance"},"color":"aqua"}]}},{"score":{"name":"$GRIDUTIL_CONFIG","objective":"generation_distance"}}]

tellraw @s [{"text":"[pause/unpause cell generation]","color":"green","clickEvent":{"action":"suggest_command","value":"/function gridutil:debug/toggle_freezing"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles grid cell generation"}]}}]

tellraw @s [{"text":"[toggle cell marker particles]","color":"green","clickEvent":{"action":"suggest_command","value":"/function gridutil:debug/toggle_marker_glowing"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles cell marker particles for debugging"}]}}]

tellraw @s [{"text":"[toggle cell glowstone placing]","color":"green","clickEvent":{"action":"suggest_command","value":"/function gridutil:debug/toggle_glowstone_placement"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles placing a glowstone block above marker"}]}}]

tellraw @s [{"text":"[toggle noise color markers]","color":"green","clickEvent":{"action":"suggest_command","value":"/function gridutil:debug/toggle_noise_display_generation"},"hoverEvent":{"action":"show_text","contents":[{"text":"Toggles generating a noise based colore above markers"}]}}]