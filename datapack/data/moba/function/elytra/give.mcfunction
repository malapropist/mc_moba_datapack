# correct format for enchantments
item replace entity @a[team=red] armor.chest with minecraft:elytra[enchantments={binding_curse:1}]
item replace entity @a[team=blue] armor.chest with minecraft:elytra[enchantments={binding_curse:1}]

tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"Elytra phase active for 10 minutes!","color":"aqua"}]
