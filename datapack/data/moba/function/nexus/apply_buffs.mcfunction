# Counter enemy-team beacon buffs with opposite effects (vanilla handles friendly buffs)
execute as @e[type=marker,tag=moba_nexus_alive] at @s run function moba:nexus/apply_buffs_at
