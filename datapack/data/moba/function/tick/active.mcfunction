scoreboard players add #game moba_time 1

# Elytra phase (first 10 minutes)
execute if score #game moba_time matches ..3000 run function moba:elytra/maintain
execute if score #game moba_time matches 3000 run function moba:elytra/strip

function moba:nexus/check_destruction
function moba:nexus/apply_buffs
