execute unless predicate jbt.main:tiers/diamond/either if block ~ ~ ~ #minecraft:needs_diamond_tool run return fail
execute if block ~ ~ ~ #jbt.main:unbreakable run return fail
data remove storage jbt:temp chisel
execute unless items entity @s weapon.offhand * run return fail
execute if predicate jbt.chisel:offhand run return fail
data modify storage jbt:temp chisel.item set from entity @s equipment.offhand
execute unless function jbt.chisel:check/check_block run return fail
execute unless function jbt.chisel:check/check_same run return fail
execute at @s run playsound minecraft:block.nether_bricks.place player @a ~ ~ ~ 0.8 1.5
execute at @s run playsound minecraft:block.stone.place player @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 0.32 2
function jbt.chisel:block/place
swing @s mainhand
execute if entity @s[gamemode=creative] run return fail
function jbt.main:durability/mainhand/handle
