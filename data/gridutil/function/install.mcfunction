say installing pack
###
# Called by gridutil:load on first run
###

# EDIT set current version number here
scoreboard players set $VERSION gridutil_pack_info 1100
# Increased for breaking changes. Not yet used but already implemeneted for as future proofing
scoreboard players set $GRIDUTIL_CONFIG cell_version 1

# DO NOT TOUCH
# Unique identifier of this datapack.
scoreboard players set $PACK_ID gridutil_pack_info 503593542
# setting this to anythign above 0 flags the pack as installed
scoreboard players set $PACK_ID gridutil_pack_info 1


# scoreboard creation
# system/internal
scoreboard objectives add pop_step dummy {"text": "Population Step"}
scoreboard objectives add nb_count dummy {"text": "Neighbor Count"}
scoreboard objectives add guid dummy {"text": "GUID"}
scoreboard objectives add cell_version dummy {"text": "Cell Version"}
scoreboard objectives add cell_noise_1 dummy {"text": "Cell Noise 1"}

scoreboard objectives add integer dummy {"text": "Integer"}
# user/custom
scoreboard objectives add gridsize dummy {"text": "Grid Size"}
scoreboard objectives add origin_x dummy {"text": "Origin X"}
scoreboard objectives add origin_y dummy {"text": "Origin Y"}
scoreboard objectives add origin_z dummy {"text": "Origin Z"}
scoreboard objectives add cells_per_tick dummy {"text": "cells generated per tick"}
scoreboard objectives add generation_distance dummy {"text": "Generation distance from a player"}
scoreboard objectives add highlight_markers dummy {"text": "Marker Highlight"}
scoreboard objectives add auto_stepping dummy {"text": "Auto stepping generator"}
scoreboard objectives add debug_structures dummy {"text": "Place glowstone"}
scoreboard objectives add noise_markers dummy {"text": "Show Noise Markers"}


# SYSTEM CONFIG
# the default values newly installed packs
scoreboard players set $GRIDUTIL_CONFIG origin_x 0
scoreboard players set $GRIDUTIL_CONFIG origin_y 0
scoreboard players set $GRIDUTIL_CONFIG origin_z 0
function gridutil:set/origin_to_provided_coords {x:7,y:100,z:7}
scoreboard players set $GRIDUTIL_CONFIG guid 1
# debug default values
scoreboard players set $GRIDUTIL_CONFIG highlight_markers 0
scoreboard players set $GRIDUTIL_CONFIG auto_stepping 1
scoreboard players set $GRIDUTIL_CONFIG debug_structures 0
scoreboard players set $GRIDUTIL_CONFIG noise_markers 0


# USER CONFIG
# user configurable values
scoreboard players set $GRIDUTIL_CONFIG gridsize 32
execute store result storage gridutil:config gridsize int 1 run scoreboard players get $GRIDUTIL_CONFIG gridsize
# set cells_per_tick to -1 for unlimited
scoreboard players set $GRIDUTIL_CONFIG cells_per_tick 1
execute store result storage gridutil:config cells_per_tick int 1 run scoreboard players get $GRIDUTIL_CONFIG cells_per_tick
# set generation_distance to -1 for unlimited
scoreboard players set $GRIDUTIL_CONFIG generation_distance 64
execute store result storage gridutil:config generation_distance int 1 run scoreboard players get $GRIDUTIL_CONFIG generation_distance


# defining static numbers for calculation
#scoreboard objectives add integer dummy
#scoreboard players set $DUMMY_40 integer 40

# grab seed
execute store result score $seed integer run seed


tellraw @a [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Thank you for installing Gridutil","color":"white"}]
tellraw @a [{"text":""},{"text":"[","color":"gold"},{"text":"Gridutil","color":"yellow"},{"text":"] ","color":"gold"},{"text":"Run ","color":"white"},{"text":"/function gridutil:config","underlined":true,"color":"blue","clickEvent":{"action":"suggest_command","value":"/function gridutil:config"}},{"text":" to configure some settings of the datapack"}]