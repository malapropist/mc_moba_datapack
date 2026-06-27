execute unless score #game moba_phase matches 1 run return fail
scoreboard players set #game moba_phase 2

title @a title [{"text":"RED WINS!","color":"red","bold":true}]
tellraw @a [{"text":"[MOBA] ","color":"gold","bold":true},{"text":"All Blue nexuses destroyed. ","color":"gray"},{"text":"Red team wins!","color":"red","bold":true}]
playsound ui.toast.challenge.complete master @a ~ ~ ~ 1 1

function moba:elytra/strip
