execute if score $GRIDUTIL_CONFIG debug_structures matches 1.. run return run scoreboard players set $GRIDUTIL_CONFIG debug_structures 0
execute if score $GRIDUTIL_CONFIG debug_structures matches ..0 run scoreboard players set $GRIDUTIL_CONFIG debug_structures 1
execute if score $GRIDUTIL_CONFIG debug_structures matches 1.. run tellraw @p [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Glowstone placement enabled. Run  ","color":"white"},{"text":"[/function gridutil:debug/toggle_glowstone_placement]","color":"blue","clickEvent":{"action":"run_command","value":"/function gridutil:debug/toggle_glowstone_placement"}},{"text":" to disable again.","color":"white"}]