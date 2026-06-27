# Opposite effects for enemy players in beacon range ($(distance) blocks)
# Speed ↔ Slowness, Haste ↔ Mining Fatigue, Resistance ↔ Weakness,
# Jump Boost ↔ Slowness, Strength ↔ Weakness, Regeneration ↔ Poison

# Speed (tier II when secondary matches)
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:speed",secondary_effect:"minecraft:speed"} run effect give @a[team=blue,distance=..$(distance)] minecraft:slowness 5 1 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:speed",secondary_effect:"minecraft:speed"} run effect give @a[team=red,distance=..$(distance)] minecraft:slowness 5 1 true
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:speed"} unless data block ~ ~ ~ {secondary_effect:"minecraft:speed"} run effect give @a[team=blue,distance=..$(distance)] minecraft:slowness 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:speed"} unless data block ~ ~ ~ {secondary_effect:"minecraft:speed"} run effect give @a[team=red,distance=..$(distance)] minecraft:slowness 5 0 true

# Haste
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:haste",secondary_effect:"minecraft:haste"} run effect give @a[team=blue,distance=..$(distance)] minecraft:mining_fatigue 5 1 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:haste",secondary_effect:"minecraft:haste"} run effect give @a[team=red,distance=..$(distance)] minecraft:mining_fatigue 5 1 true
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:haste"} unless data block ~ ~ ~ {secondary_effect:"minecraft:haste"} run effect give @a[team=blue,distance=..$(distance)] minecraft:mining_fatigue 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:haste"} unless data block ~ ~ ~ {secondary_effect:"minecraft:haste"} run effect give @a[team=red,distance=..$(distance)] minecraft:mining_fatigue 5 0 true

# Resistance
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:resistance",secondary_effect:"minecraft:resistance"} run effect give @a[team=blue,distance=..$(distance)] minecraft:weakness 5 1 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:resistance",secondary_effect:"minecraft:resistance"} run effect give @a[team=red,distance=..$(distance)] minecraft:weakness 5 1 true
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:resistance"} unless data block ~ ~ ~ {secondary_effect:"minecraft:resistance"} run effect give @a[team=blue,distance=..$(distance)] minecraft:weakness 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:resistance"} unless data block ~ ~ ~ {secondary_effect:"minecraft:resistance"} run effect give @a[team=red,distance=..$(distance)] minecraft:weakness 5 0 true

# Jump Boost
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:jump_boost",secondary_effect:"minecraft:jump_boost"} run effect give @a[team=blue,distance=..$(distance)] minecraft:slowness 5 1 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:jump_boost",secondary_effect:"minecraft:jump_boost"} run effect give @a[team=red,distance=..$(distance)] minecraft:slowness 5 1 true
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:jump_boost"} unless data block ~ ~ ~ {secondary_effect:"minecraft:jump_boost"} run effect give @a[team=blue,distance=..$(distance)] minecraft:slowness 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:jump_boost"} unless data block ~ ~ ~ {secondary_effect:"minecraft:jump_boost"} run effect give @a[team=red,distance=..$(distance)] minecraft:slowness 5 0 true

# Strength
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:strength",secondary_effect:"minecraft:strength"} run effect give @a[team=blue,distance=..$(distance)] minecraft:weakness 5 1 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:strength",secondary_effect:"minecraft:strength"} run effect give @a[team=red,distance=..$(distance)] minecraft:weakness 5 1 true
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {primary_effect:"minecraft:strength"} unless data block ~ ~ ~ {secondary_effect:"minecraft:strength"} run effect give @a[team=blue,distance=..$(distance)] minecraft:weakness 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {primary_effect:"minecraft:strength"} unless data block ~ ~ ~ {secondary_effect:"minecraft:strength"} run effect give @a[team=red,distance=..$(distance)] minecraft:weakness 5 0 true

# Regeneration as secondary (primary is a different effect)
$execute if entity @s[tag=moba_team_red] if data block ~ ~ ~ {secondary_effect:"minecraft:regeneration"} unless data block ~ ~ ~ {primary_effect:"minecraft:regeneration"} run effect give @a[team=blue,distance=..$(distance)] minecraft:poison 5 0 true
$execute if entity @s[tag=moba_team_blue] if data block ~ ~ ~ {secondary_effect:"minecraft:regeneration"} unless data block ~ ~ ~ {primary_effect:"minecraft:regeneration"} run effect give @a[team=red,distance=..$(distance)] minecraft:poison 5 0 true
