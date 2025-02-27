# Gridutil Datapack for Minecraft 1.21.4

## Description

Gridutil is a datapack library intended for datapack/map makers. It a lightweight way to generate an infinite conform grid of marker entities. These entities can be used as anchors/references to build a custom world generator on top.

## Features

- Generate a continuous grid of markers trough the entire world.
- Start, stop, and pause, grid generation via functions (or advance them step by step)
- A function tag will be called that you can hook your datapacks functions into. Functions under this tag will be ran `as` and `at` any marker that needs to be populated.
- Configurable grid size via scoreboard
- Configurable origin (offset + y-level) via scoreboard
- Configurable grid cell population per tick (default 1) to not lag servers

## Planned features

- Teleport support. (Multiplayer is already supported but all players have to start at spawn/origin)
- 3D cell grid
- independent cell dimensions (height width, depth) for the grid (currently only squares are supported)

## Installation

Either enable the datapack alongside any datapack that needs it or "shade" it into said datapack. That means bundling gridutil as a dependency inside your own datapacks. This can be easily done by copying the `"data/gridutil"` folder inside you own datapacks `data` folder.

## Usage

### Basic Usage

To take use of gridutil you need to start the generator. This can be done (from inside your won datapack) with `/function gridutil:generation/start`.

Once the generator has been started it can not be restarted only paused.
Gridutil will start generating a grid of marker entitles around the player (by default at 8,100,8 and 16 blocks apart).

Any functions under the `#gridutil:generate_at_marker` tag will run under the scope of a marker once if it is ready to populate. This is called exactly once for each grid cell. If you do NOT put any functions under this tag the library will do nothing.
Each marker has a random scoreboard value set (cell_noise_1). This value is based on the coordinates + the world seed. Meaning it will be the same for all world with the same seed. This can be utilized for custom deterministic generation in cells.

The generation can be paused and resumed with `/function gridutil:debug/toggle_freezing` or directly by setting the scoreboard of `$GRIDUTIL_CONFIG auto_stepping` to 1 or 0.
This should only be done for testing.

### Configuration

Gridutil has several configuration options. **The following options can only be set before the grid generation is started**:

Most of these options can be edited from the in-game config menu via `/function gridutil:config`.

| Option                                      | Default    | Command                                                      |
|---------------------------------------------|------------|--------------------------------------------------------------|
| Grid size. How far apart will markers spawn | 16         | `/scoreboard players set $GRIDUTIL_CONFIG gridsize <number>` |
| Grid Origin                                 | 8, 100, 8, | `/function gridutil:set/origin_to_current_position`          |

The options below are supported to be changed at any time:

| Option                                                                                                                                                                                                                                         | Default    | Command                                                                 |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|-------------------------------------------------------------------------|
| How many chunks should be populated each tick (in total). Only affects how often #gridutil:generate_at_marker is called per tick                                                                                                               | 1          | `/scoreboard players set $GRIDUTIL_CONFIG cells_per_tick <number>`      |
| Up to how far away from players should the grid generate? Make sure to set this low enough so no spawn attempts are made into unloaded chunks. It messes with entities loading and unloading. Max value = render distance - (grid size * 1.5)  | 64         | `/scoreboard players set $GRIDUTIL_CONFIG generation_distance <number>` |

### Debug Options

There are several debug option built-in into Gridutil.

`/function gridutil:debug/toggle_freezing` will pause the generator. It can be advanced 1 full step at a time via `/function gridutil:generation/step`

`/function gridutil:debug/toggle_glowstone_placement` will place a glowstone block 4 blocks above any marker to visualize them better

`/function gridutil:debug/toggle_marker_glowing` will constantly run flame particles at any marker (less performant than the glowstone option)

## Known Issues

- Unsafe teleportation! The grid is generated from the origin point outwards inside chunks that players load. the grid can only "spread" trough existing chunks currently (grid cells spread from one neighboring cell to another). So if you create isolated parts in the world (For example trough nether travel) the grid will not generate in those isolated regions. As long as you do not let your player leave the dimension and/or teleport them far away to ungenerated chunks, this should not be an issue.

## License

This datapack is **licensed under GPL3**. Please give credit if you are sharing this datapack or a modified version of it.
