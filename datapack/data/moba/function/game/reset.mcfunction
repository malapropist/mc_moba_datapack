scoreboard players set #game moba_phase 0
scoreboard players set #game moba_time 0
scoreboard players set #game red_nexuses 0
scoreboard players set #game blue_nexuses 0
scoreboard players set #game red_nexus_seq 0
scoreboard players set #game blue_nexus_seq 0

scoreboard players set @a placed_nexus 0
advancement revoke @a only moba:place_beacon

kill @e[type=marker,tag=moba_nexus]
clear @a beacon
clear @a iron_block

function moba:elytra/strip

function moba:lobby/build
function moba:lobby/spawn_all

tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Match reset. Lobby phase.","color":"green"}]
