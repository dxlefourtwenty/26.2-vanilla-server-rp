data modify storage jbt.iris:data Box set from storage jbt.iris:data Shape[-1]
data remove storage jbt.iris:data Shape[-1]
execute store success score $is_hit jbt.iris store result score $distance jbt.iris run function jbt.iris:raycast/check_intersection/ray_box
execute if score $is_hit jbt.iris matches 1 if score $distance jbt.iris >= $min_distance jbt.iris run scoreboard players set $is_hit jbt.iris 0
execute if score $is_hit jbt.iris matches 1 run data modify storage jbt.iris:data TargetedBox set from storage jbt.iris:data Box
execute if score $is_hit jbt.iris matches 1 if score $hits_x_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_x_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[0]
execute if score $is_hit jbt.iris matches 1 if score $hits_y_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_y_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[1]
execute if score $is_hit jbt.iris matches 1 if score $hits_z_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_z_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[2]
execute if score $is_hit jbt.iris matches 1 run scoreboard players operation $min_distance jbt.iris = $distance jbt.iris
execute if data storage jbt.iris:data Shape[-1] run return run function jbt.iris:raycast/check_intersection/loop
execute if score $min_distance jbt.iris matches 2147483647 run return fail
scoreboard players operation $min_distance jbt.iris *= $1000 jbt.iris
return run scoreboard players get $min_distance jbt.iris
