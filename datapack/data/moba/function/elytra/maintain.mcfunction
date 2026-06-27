# Re-equip elytra after death during the 10-minute phase
execute as @a[team=red] run item replace entity @s armor.chest with minecraft:elytra[enchantments={binding_curse:1}]
execute as @a[team=blue] run item replace entity @s armor.chest with minecraft:elytra[enchantments={binding_curse:1}]
