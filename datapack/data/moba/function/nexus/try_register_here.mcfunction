execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:beacon unless entity @e[type=marker,tag=moba_nexus,distance=..1,limit=1] run function moba:nexus/register_here
