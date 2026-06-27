execute if score #game moba_phase matches 1.. run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Game already started.","color":"red"}]
execute if score #game moba_phase matches 1.. run return fail

scoreboard players set #game moba_phase 1
scoreboard players set #game moba_time 0
scoreboard players set #game red_nexuses 0
scoreboard players set #game blue_nexuses 0
scoreboard players set #game red_nexus_seq 0
scoreboard players set #game blue_nexus_seq 0

scoreboard players set @a placed_nexus 0
advancement revoke @a only moba:place_beacon

# clear inventory
clear @a[team=red]
clear @a[team=blue]

# Give nexus kits (beacon + iron blocks for pyramid)
give @a[team=red] beacon 1
give @a[team=red] iron_block 64
give @a[team=blue] beacon 1
give @a[team=blue] iron_block 64

function moba:elytra/give

gamemode survival @a
effect give @a regeneration 150 9 true

tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Match started! Place your beacon nexus. Elytra phase: 10 minutes.","color":"green"}]
title @a title {"text":"MOBA Started!","color":"gold"}
