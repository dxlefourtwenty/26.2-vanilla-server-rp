execute if block ~ ~ ~ #jbt.main:unbreakable run return fail
execute if score $tile_drops jbt.dummy matches 1 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
clone ~ ~ ~ ~ ~ ~ -20000000 -64 94 replace
setblock ~ ~ ~ minecraft:air replace
gamerule block_drops false
clone -20000000 -64 94 -20000000 -64 94 ~ ~ ~ replace
setblock -20000000 -64 94 minecraft:bedrock replace
setblock ~ ~ ~ minecraft:air destroy
execute if score $tile_drops jbt.dummy matches 1 run gamerule block_drops true
