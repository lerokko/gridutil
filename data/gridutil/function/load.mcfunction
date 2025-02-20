# entrypoint
say loading pack
scoreboard objectives add gridutil_pack_info dummy {"text": "Gridutil Datapack"}
scoreboard players add $INSTALLED gridutil_pack_info 1
execute if score $INSTALLED gridutil_pack_info matches 1 run function gridutil:install


# restarting loops at the correct offset
# update runtime config
schedule function gridutil:update_storage_from_scores 4t replace
execute if score $GRIDUTIL_CONFIG highlight_markers matches 1.. run schedule function gridutil:debug/particle_renderer 1t replace

tellraw @a [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Gridutil version ","color":"white"},{"score":{"name":"$VERSION","objective":"gridutil_pack_info"}},{"text":" (re)loaded","color":"white"}]
