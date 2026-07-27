execute unless entity @s run return fail
execute if score ${x} jbt.iris matches ..0 run scoreboard players set ${x} jbt.iris 0
execute if score ${y} jbt.iris matches ..0 run scoreboard players set ${y} jbt.iris 0
execute if score ${z} jbt.iris matches ..0 run scoreboard players set ${z} jbt.iris 0
execute if score ${x} jbt.iris matches 1000000.. run scoreboard players set ${x} jbt.iris 999999
execute if score ${y} jbt.iris matches 1000000.. run scoreboard players set ${y} jbt.iris 999999
execute if score ${z} jbt.iris matches 1000000.. run scoreboard players set ${z} jbt.iris 999999
execute store result storage jbt.iris:args x int 1 run scoreboard players get $[x] jbt.iris
execute store result storage jbt.iris:args y int 1 run scoreboard players get $[y] jbt.iris
execute store result storage jbt.iris:args z int 1 run scoreboard players get $[z] jbt.iris
execute store result storage jbt.iris:args value int 1 run scoreboard players get ${x} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dx set string storage jbt.iris:data String -6
execute store result storage jbt.iris:args value int 1 run scoreboard players get ${y} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dy set string storage jbt.iris:data String -6
execute store result storage jbt.iris:args value int 1 run scoreboard players get ${z} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dz set string storage jbt.iris:data String -6
function jbt.iris:set_coordinates/teleport with storage jbt.iris:args
