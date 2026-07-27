tellraw @a[gamemode=creative] ["", {translate: "jbt.tooltip", font: "jbt:tooltip", color: "white", italic: false}, {translate: "jbt.loaded", fallback: " loaded!", color: "white", bold: false}]
scoreboard objectives add jbt.raycast_distance dummy
scoreboard objectives add jbt.dummy dummy
scoreboard objectives add jbt.id dummy
scoreboard objectives add jbt.flask_levels dummy
scoreboard objectives add jbt.flask_points dummy
scoreboard objectives add jbt.flask_value dummy
scoreboard objectives add jbt.hammer_check minecraft.used:minecraft.netherite_pickaxe
scoreboard objectives add jbt.ladder_check minecraft.used:minecraft.ladder
scoreboard objectives add jbt.ladder_count dummy
scoreboard objectives add jbt.timer dummy
scoreboard objectives add jbt.cooldown dummy
scoreboard objectives add jbt.use_book minecraft.used:minecraft.written_book
scoreboard objectives add jbt.current_page dummy
scoreboard objectives add jbt.book_buttons trigger
scoreboard objectives add jbt.doodle dummy
execute in minecraft:overworld run forceload add -20000000 100 -20000000 100
execute in minecraft:overworld unless block -20000000 -64 99 minecraft:chest run setblock -20000000 -64 99 minecraft:chest
function jbt.main:book/register_all
