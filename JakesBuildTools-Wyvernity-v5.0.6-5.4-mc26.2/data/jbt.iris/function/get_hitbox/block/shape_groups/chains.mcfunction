execute unless block ~ ~ ~ #minecraft:chains run return fail
execute if block ~ ~ ~ #minecraft:chains[axis=x] run data modify storage jbt.iris:data Shape set value [{min: [0.0d, 0.40625d, 0.40625d], max: [1.0d, 0.59375d, 0.59375d]}]
execute if block ~ ~ ~ #minecraft:chains[axis=y] run data modify storage jbt.iris:data Shape set value [{min: [0.40625d, 0.0d, 0.40625d], max: [0.59375d, 1.0d, 0.59375d]}]
execute if block ~ ~ ~ #minecraft:chains[axis=z] run data modify storage jbt.iris:data Shape set value [{min: [0.40625d, 0.40625d, 0.0d], max: [0.59375d, 0.59375d, 1.0d]}]
