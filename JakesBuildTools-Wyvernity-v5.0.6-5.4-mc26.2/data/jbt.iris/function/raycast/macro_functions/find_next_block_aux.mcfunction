$scoreboard players operation $to_next_block jbt.iris = $to_next_$(a) jbt.iris
$execute if score $d$(a) jbt.iris matches 0.. run scoreboard players add $[$(a)] jbt.iris 1
$execute if score $d$(a) jbt.iris matches 0.. run scoreboard players set ${$(a)} jbt.iris 0
$execute if score $d$(a) jbt.iris matches ..-1 run scoreboard players remove $[$(a)] jbt.iris 1
$execute if score $d$(a) jbt.iris matches ..-1 run scoreboard players set ${$(a)} jbt.iris 1000000
scoreboard players operation $delta jbt.iris = $to_next_block jbt.iris
$scoreboard players operation $delta jbt.iris *= $d$(b) jbt.iris
scoreboard players operation $delta jbt.iris /= $1000 jbt.iris
$scoreboard players operation ${$(b)} jbt.iris += $delta jbt.iris
scoreboard players operation $delta jbt.iris = $to_next_block jbt.iris
$scoreboard players operation $delta jbt.iris *= $d$(c) jbt.iris
scoreboard players operation $delta jbt.iris /= $1000 jbt.iris
$scoreboard players operation ${$(c)} jbt.iris += $delta jbt.iris
