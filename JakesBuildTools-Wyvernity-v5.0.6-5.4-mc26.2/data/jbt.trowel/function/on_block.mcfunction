execute align xyz if entity @n[type=!#jbt.main:raybanned, tag=!smithed.strict, dx=0, dy=0, dz=0, sort=nearest] run return fail
data remove storage jbt:temp trowel
function jbt.trowel:random/start
execute unless data storage jbt:temp trowel.chosen_block run return fail
execute at @s run playsound minecraft:block.deepslate.break player @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.gravel.break player @a ~ ~ ~ 0.1 1
function jbt.trowel:block/place
function jbt.trowel:swing
execute if entity @s[gamemode=creative] run return fail
function jbt.trowel:durability
execute if data storage jbt:temp durability.break{components: {"minecraft:custom_data": {jbt: {id: "trowel", tier: "diamond"}}, "minecraft:enchantments": {"minecraft:unbreaking": 3}}} run advancement grant @s only jbt.trowel:visible/break_trowel
