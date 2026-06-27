# Lobby: team joins and spawn new players at sky lobby
execute if score #game moba_phase matches 0 run function moba:tick/lobby

# Active game loop
execute if score #game moba_phase matches 1 run function moba:tick/active

# Re-enable join trigger for players who used it
scoreboard players enable @a moba_join
