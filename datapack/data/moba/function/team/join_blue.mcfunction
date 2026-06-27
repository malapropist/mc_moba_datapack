team join blue @s
tellraw @s [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"You joined ","color":"gray"},{"text":"Blue","color":"blue","bold":true},{"text":" team.","color":"gray"}]
scoreboard players set @s moba_join 0
scoreboard players enable @s moba_join
