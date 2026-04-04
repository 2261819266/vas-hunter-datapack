execute unless score count.loot vas.temp matches 1.. run return run \
    scoreboard players set count.loot vas.temp 64
scoreboard players remove count.loot vas.temp 1

loot give @s loot minecraft:gameplay/piglin_bartering

function vas:test
