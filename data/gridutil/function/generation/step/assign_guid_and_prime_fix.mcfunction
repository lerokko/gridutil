tag @e[tag=unprimed,distance=..0.01] add grudutil_purge
tag @s remove grudutil_purge
execute as @e[tag=grudutil_purge,distance=..0.01] run say killed UNprimed duplicate
kill @e[tag=grudutil_purge,distance=..0.01]
function gridutil:generation/step/assign_guid_and_prime