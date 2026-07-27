execute if predicate jbt.main:issneaking unless block ~ ~ ~ #jbt.main:liquids[level=0] run return run data modify storage jbt.iris:data Shape set value []
execute if block ~ ~1 ~ #jbt.main:liquids run return run data modify storage jbt.iris:data Shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 1.0d, 1.0d]}]
data modify storage jbt.iris:data Shape set value [{min: [0.0d, 0.0d, 0.0d], max: [1.0d, 0.85d, 1.0d]}]
