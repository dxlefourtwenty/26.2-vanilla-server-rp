execute as @e[tag=jbt.magnet_frame, type=minecraft:item_frame] at @s run function jbt.item_magnet:frame/effect
execute as @a run function jbt.main:player
execute as @e[tag=jbt.marker, type=minecraft:marker] run function jbt.main:marker
