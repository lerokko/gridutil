###experimental lag spike fix
#NOTE this triggers a lot on wolrd load. functions are greedy and will try to spawn in markers before chunks are entity processing.
# this code is currently not GUID preserving as it will just pick one marker and kill al others at that location. since noise is seed determined all values and behvoirs except GUID itself will be unaffected. the only downside is GUID being rerolled in chunks load to fast. With that being said, at this point in time GUIDs are not used for anything in the code. But at a future time when utiliing version codes on markers it could create breaking changes since they would update as well.
# This current impleentation also means any sub markers system (own jigsaw layer) would need to work independantely from grid_cell state.
tag @e[tag=grid_cell,tag=unprimed,distance=..0.01] add grudutil_purge
#tag @s remove grudutil_purge
execute as @e[tag=grudutil_purge,distance=..0.01] run say killed UNprimed duplicate
kill @e[tag=grudutil_purge,distance=..0.01]
###experiment end