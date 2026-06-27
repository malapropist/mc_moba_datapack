execute unless score #game moba_phase matches 1 run return fail

# One-shot: stop checking after destruction starts
tag @s remove moba_nexus_alive

execute if entity @s[tag=moba_team_red] if score #game red_nexuses matches 1.. run scoreboard players remove #game red_nexuses 1
execute if entity @s[tag=moba_team_blue] if score #game blue_nexuses matches 1.. run scoreboard players remove #game blue_nexuses 1

execute if entity @s[tag=moba_team_red] if score #game red_nexuses matches 0 run function moba:game/victory_blue
execute if entity @s[tag=moba_team_blue] if score #game blue_nexuses matches 0 run function moba:game/victory_red

kill @s

tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"A nexus has been destroyed!","color":"yellow"}]
