function moba:team/process_join
# gamemode adventure @a
function moba:lobby/maintain_buttons
execute as @a[tag=!moba_lobby_spawned] run function moba:lobby/teleport
