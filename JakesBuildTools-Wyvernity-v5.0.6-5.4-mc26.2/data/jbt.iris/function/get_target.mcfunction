tag @e remove jbt.iris.targeted_entity
tag @e remove jbt.iris.possible_target
kill @e[type=minecraft:marker, tag=jbt.iris.targeted_block]
scoreboard players reset * jbt.iris.id
data modify storage jbt.iris:output TargetType set value "NONE"
data remove storage jbt.iris:output TargetedBlock
data remove storage jbt.iris:output TargetedEntity
data remove storage jbt.iris:output TargetPosition
data remove storage jbt.iris:output Distance
data remove storage jbt.iris:output TargetedBox
data remove storage jbt.iris:output TargetedFace
scoreboard players set $depth jbt.iris 0
scoreboard players set $min_distance jbt.iris 2147483647
scoreboard players set $max_entity_id jbt.iris 0
scoreboard players set $total_distance jbt.iris 0
execute summon minecraft:marker run function jbt.iris:get_position/main
tag @s add jbt.iris.executing
execute store result score $max_depth jbt.iris run data get storage jbt.iris:settings MaxRecursionDepth
return run function jbt.iris:raycast/loop
