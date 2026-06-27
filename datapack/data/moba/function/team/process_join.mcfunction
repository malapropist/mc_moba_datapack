execute as @a[scores={moba_join=1}] run function moba:team/join_red
execute as @a[scores={moba_join=2}] run function moba:team/join_blue

scoreboard players set @a[scores={moba_join=1..}] moba_join 0
