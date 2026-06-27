# MOBA datapack init
scoreboard objectives add moba_phase dummy "Game Phase"
scoreboard objectives add moba_time dummy "Game Time"
scoreboard objectives add red_nexuses dummy "Red Nexuses"
scoreboard objectives add blue_nexuses dummy "Blue Nexuses"
scoreboard objectives add nexus_id dummy "Nexus ID"
scoreboard objectives add placed_nexus dummy "Placed Nexus"
scoreboard objectives add moba_raycast dummy
scoreboard objectives add moba_join trigger "Join Team"
scoreboard objectives add beacon_lvl dummy

team add red
team add blue
team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false

scoreboard players set #game moba_phase 0
scoreboard players set #game moba_time 0
scoreboard players set #game red_nexuses 0
scoreboard players set #game blue_nexuses 0
scoreboard players set #game red_nexus_seq 0
scoreboard players set #game blue_nexus_seq 0

# Elytra phase: 2.5 minutes = 3000 ticks
scoreboard players set #const elytra_ticks 3000

scoreboard players enable @a moba_join

function moba:lobby/build
function moba:lobby/spawn_all

tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Datapack loaded. Enter a team room and press the button, or use ","color":"gray"},{"text":"/trigger moba_join set 1","color":"red","clickEvent":{"action":"suggest_command","value":"/trigger moba_join set 1"}},{"text":" (red) / ","color":"gray"},{"text":"/trigger moba_join set 2","color":"blue","clickEvent":{"action":"suggest_command","value":"/trigger moba_join set 2"}},{"text":" (blue). Mods start: ","color":"gray"},{"text":"/function moba:game/start","color":"green","clickEvent":{"action":"suggest_command","value":"/function moba:game/start"}}]
