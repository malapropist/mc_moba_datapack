execute unless score @s placed_nexus matches 1.. run function moba:nexus/try_register_here
execute unless score @s placed_nexus matches 1.. run scoreboard players add @s moba_raycast 1
execute unless score @s placed_nexus matches 1.. if score @s moba_raycast matches ..6 rotated as @s positioned ^ ^ ^1 run function moba:nexus/raycast/step
