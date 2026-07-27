scoreboard players set $entity_found jbt.iris 0
execute if score $entity_found jbt.iris matches 0 if entity @s[type=#jbt.iris:tree/0] run function jbt.iris:get_hitbox/entity/tree/0
execute if score $entity_found jbt.iris matches 0 if entity @s[type=#jbt.iris:tree/1] run function jbt.iris:get_hitbox/entity/tree/1
execute if score $entity_found jbt.iris matches 0 if entity @s[type=#jbt.iris:tree/2] run function jbt.iris:get_hitbox/entity/tree/2
execute if score $entity_found jbt.iris matches 0 if entity @s[type=#jbt.iris:tree/3] run function jbt.iris:get_hitbox/entity/tree/3
execute if score $entity_found jbt.iris matches 0 if entity @s[type=#jbt.iris:tree/4] run function jbt.iris:get_hitbox/entity/tree/4
function jbt.iris:get_hitbox/entity/scale
execute if predicate jbt.iris:baby run scoreboard players operation $entity_width jbt.iris /= $2 jbt.iris
execute if predicate jbt.iris:baby run scoreboard players operation $entity_height jbt.iris /= $2 jbt.iris
scoreboard players operation $entity_[x] jbt.iris = $[x] jbt.iris
scoreboard players operation $entity_[y] jbt.iris = $[y] jbt.iris
scoreboard players operation $entity_[z] jbt.iris = $[z] jbt.iris
scoreboard players operation $entity_{x} jbt.iris = ${x} jbt.iris
scoreboard players operation $entity_{y} jbt.iris = ${y} jbt.iris
scoreboard players operation $entity_{z} jbt.iris = ${z} jbt.iris
execute at @s summon minecraft:marker run function jbt.iris:get_position/get_coordinates
kill @e[type=minecraft:marker, tag=jbt.iris.coordinate_getter]
scoreboard players operation $entity_[x] jbt.iris >< $[x] jbt.iris
scoreboard players operation $entity_[y] jbt.iris >< $[y] jbt.iris
scoreboard players operation $entity_[z] jbt.iris >< $[z] jbt.iris
scoreboard players operation $entity_{x} jbt.iris >< ${x} jbt.iris
scoreboard players operation $entity_{y} jbt.iris >< ${y} jbt.iris
scoreboard players operation $entity_{z} jbt.iris >< ${z} jbt.iris
scoreboard players operation $entity_dx jbt.iris = $entity_[x] jbt.iris
scoreboard players operation $entity_dx jbt.iris -= $[x] jbt.iris
scoreboard players operation $entity_dx jbt.iris *= $1000000 jbt.iris
scoreboard players operation $entity_dx jbt.iris += $entity_{x} jbt.iris
scoreboard players operation $entity_dy jbt.iris = $entity_[y] jbt.iris
scoreboard players operation $entity_dy jbt.iris -= $[y] jbt.iris
scoreboard players operation $entity_dy jbt.iris *= $1000000 jbt.iris
scoreboard players operation $entity_dy jbt.iris += $entity_{y} jbt.iris
scoreboard players operation $entity_dz jbt.iris = $entity_[z] jbt.iris
scoreboard players operation $entity_dz jbt.iris -= $[z] jbt.iris
scoreboard players operation $entity_dz jbt.iris *= $1000000 jbt.iris
scoreboard players operation $entity_dz jbt.iris += $entity_{z} jbt.iris
scoreboard players operation $entity_half_width jbt.iris = $entity_width jbt.iris
scoreboard players operation $entity_half_width jbt.iris /= $2 jbt.iris
scoreboard players operation $entity_x0 jbt.iris = $entity_dx jbt.iris
scoreboard players operation $entity_x0 jbt.iris -= $entity_half_width jbt.iris
execute if score $entity_x0 jbt.iris matches ..0 run scoreboard players set $entity_x0 jbt.iris 0
scoreboard players operation $entity_y0 jbt.iris = $entity_dy jbt.iris
execute if score $entity_y0 jbt.iris matches ..0 run scoreboard players set $entity_y0 jbt.iris 0
scoreboard players operation $entity_z0 jbt.iris = $entity_dz jbt.iris
scoreboard players operation $entity_z0 jbt.iris -= $entity_half_width jbt.iris
execute if score $entity_z0 jbt.iris matches ..0 run scoreboard players set $entity_z0 jbt.iris 0
scoreboard players operation $entity_x1 jbt.iris = $entity_dx jbt.iris
scoreboard players operation $entity_x1 jbt.iris += $entity_half_width jbt.iris
execute if score $entity_x1 jbt.iris matches 1000000.. run scoreboard players set $entity_x1 jbt.iris 1000000
scoreboard players operation $entity_y1 jbt.iris = $entity_dy jbt.iris
scoreboard players operation $entity_y1 jbt.iris += $entity_height jbt.iris
execute if score $entity_y1 jbt.iris matches 1000000.. run scoreboard players set $entity_y1 jbt.iris 1000000
scoreboard players operation $entity_z1 jbt.iris = $entity_dz jbt.iris
scoreboard players operation $entity_z1 jbt.iris += $entity_half_width jbt.iris
execute if score $entity_z1 jbt.iris matches 1000000.. run scoreboard players set $entity_z1 jbt.iris 1000000
data modify storage jbt.iris:data Shape append value {type: "ENTITY", min: [0.0d, 0.0d, 0.0d], max: [0.0d, 0.0d, 0.0d]}
execute store result storage jbt.iris:data Shape[-1].min[0] double 0.000001 run scoreboard players get $entity_x0 jbt.iris
execute store result storage jbt.iris:data Shape[-1].min[1] double 0.000001 run scoreboard players get $entity_y0 jbt.iris
execute store result storage jbt.iris:data Shape[-1].min[2] double 0.000001 run scoreboard players get $entity_z0 jbt.iris
execute store result storage jbt.iris:data Shape[-1].max[0] double 0.000001 run scoreboard players get $entity_x1 jbt.iris
execute store result storage jbt.iris:data Shape[-1].max[1] double 0.000001 run scoreboard players get $entity_y1 jbt.iris
execute store result storage jbt.iris:data Shape[-1].max[2] double 0.000001 run scoreboard players get $entity_z1 jbt.iris
tag @s add jbt.iris.possible_target
scoreboard players operation @s jbt.iris.id = $max_entity_id jbt.iris.id
execute store result storage jbt.iris:data Shape[-1].entity_id int 1 run scoreboard players get @s jbt.iris.id
scoreboard players add $max_entity_id jbt.iris.id 1
