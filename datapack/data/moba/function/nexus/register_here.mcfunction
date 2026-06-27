summon marker ~ ~ ~ {Tags:["moba_nexus","moba_nexus_alive","moba_nexus_unassigned"],CustomName:'{"text":"Nexus"}',CustomNameVisible:0b}

execute if entity @s[team=red] run scoreboard players add #game red_nexus_seq 1
execute if entity @s[team=red] run scoreboard players add #game red_nexuses 1
execute if entity @s[team=blue] run scoreboard players add #game blue_nexus_seq 1
execute if entity @s[team=blue] run scoreboard players add #game blue_nexuses 1

execute if entity @s[team=red] as @e[type=marker,tag=moba_nexus_unassigned,limit=1,sort=nearest,distance=..1] run function moba:nexus/setup_marker_red
execute if entity @s[team=blue] as @e[type=marker,tag=moba_nexus_unassigned,limit=1,sort=nearest,distance=..1] run function moba:nexus/setup_marker_blue

scoreboard players set @s placed_nexus 1
tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Nexus registered! Defend your beacon.","color":"green"}]
