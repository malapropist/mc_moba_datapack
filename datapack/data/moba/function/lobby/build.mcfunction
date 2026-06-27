# Sky lobby at y=200, center 0 0 — bedrock shell, open top, two team rooms
fill -11 199 -6 11 206 6 air replace

fill -10 200 -5 10 200 5 minecraft:bedrock
fill -4 200 -4 4 200 4 minecraft:glass
fill -5 199 -4 -5 199 4 minecraft:bedrock
fill 5 199 -4 5 199 4 minecraft:bedrock


# Side walls to main room
fill -10 201 -5 10 204 -5 minecraft:glass
fill -10 201 5 10 204 5 minecraft:glass

# Start panel — yellow concrete on south spawn wall, button + command block behind
fill -4 201 5 4 204 5 minecraft:yellow_concrete
setblock 0 202 4 minecraft:stone_button[face=wall,facing=north]
setblock 0 202 6 minecraft:command_block{Command:"function moba:game/start"}
setblock 0 203 4 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['"Start Game"','""','""','""']}}

# Reset panel — orange concrete on north spawn wall, button + command block behind
fill -4 201 -5 4 204 -5 minecraft:orange_concrete
setblock 0 202 -4 minecraft:stone_button[face=wall,facing=south]
setblock 0 202 -6 minecraft:command_block{Command:"function moba:game/reset"}
setblock 0 203 -4 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['"Reset Game"','""','""','""']}}
# Bottom walls to main room
fill -10 201 -5 -10 204 5 minecraft:bedrock
fill 10 201 -5 10 204 5 minecraft:bedrock

# Doors to rooms
fill -5 201 -5 -5 204 5 minecraft:red_concrete
fill -5 201 -1 -5 202 1 air replace
fill 5 201 -5 5 204 5 minecraft:blue_concrete
fill 5 201 -1 5 202 1 air replace

# Red room (west)
fill -10 204 -5 -10 201 5 minecraft:red_concrete
setblock -7 201 0 minecraft:stone_button[face=floor]
setblock -7 199 0 minecraft:command_block{Command:"execute as @p[distance=..8] run function moba:team/join_red"}
setblock -9 202 0 minecraft:oak_sign[rotation=12]{front_text:{messages:['"Join Red"','""','""','""']}}

# Blue room (east)
fill 10 204 -5 10 201 5 minecraft:blue_concrete
setblock 7 201 0 minecraft:stone_button[face=floor]
setblock 7 199 0 minecraft:command_block{Command:"execute as @p[distance=..8] run function moba:team/join_blue"}
setblock 9 202 0 minecraft:oak_sign[rotation=4]{front_text:{messages:['"Join Blue"','""','""','""']}}
