# Only during active match
execute unless score #game moba_phase matches 1 run return fail

# One nexus per player
execute if score @s placed_nexus matches 1.. run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"You already placed your nexus.","color":"red"}]
execute if score @s placed_nexus matches 1.. run return fail

# Must be on a team
execute unless entity @s[team=red] unless entity @s[team=blue] run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Join a team first: /trigger moba_join set 1 or 2","color":"red"}]
execute unless entity @s[team=red] unless entity @s[team=blue] run return fail

# Team nexus limit (5 per team)
execute if entity @s[team=red] if score #game red_nexuses matches 5.. run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Red team already has 5 nexuses.","color":"red"}]
execute if entity @s[team=red] if score #game red_nexuses matches 5.. run return fail
execute if entity @s[team=blue] if score #game blue_nexuses matches 5.. run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Blue team already has 5 nexuses.","color":"red"}]
execute if entity @s[team=blue] if score #game blue_nexuses matches 5.. run return fail

# Raycast up to 6 blocks along look direction for the placed beacon
scoreboard players set @s moba_raycast 0
execute anchored eyes positioned ^ ^ ^ run function moba:nexus/raycast/step

execute unless score @s placed_nexus matches 1.. run tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Could not register nexus at beacon. Look at your beacon and break/replace it.","color":"red"}]
