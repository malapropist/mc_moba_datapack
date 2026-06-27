# Vanilla beacon applies buffs to everyone in range; counter enemy-team buffs with opposite effects
execute unless block ~ ~ ~ minecraft:beacon run return fail
execute store result score #beacon beacon_lvl run data get block ~ ~ ~ Levels
execute if score #beacon beacon_lvl matches 0 run return fail

execute if score #beacon beacon_lvl matches 1 run function moba:nexus/debuff_enemies {distance:20}
execute if score #beacon beacon_lvl matches 2 run function moba:nexus/debuff_enemies {distance:30}
execute if score #beacon beacon_lvl matches 3 run function moba:nexus/debuff_enemies {distance:40}
execute if score #beacon beacon_lvl matches 4 run function moba:nexus/debuff_enemies {distance:50}
