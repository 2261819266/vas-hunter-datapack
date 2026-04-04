scoreboard players set @s vas.distance_set 70

execute if function vas:search/check run return run function vas:search/tell

scoreboard players operation @s vas.temp = @s vas.have_structure

execute at @s run tp @s ~10 ~ ~
execute if function vas:search/check run return run function vas:search/tell
execute if function vas:search/compare run return run function vas:search/search

execute at @s run tp @s ~-20 ~ ~
execute if function vas:search/check run return run function vas:search/tell
execute if function vas:search/compare run return run function vas:search/search

execute at @s run tp @s ~10 ~ ~10
execute if function vas:search/check run return run function vas:search/tell
execute if function vas:search/compare run return run function vas:search/search

execute at @s run tp @s ~ ~ ~-20
execute if function vas:search/check run return run function vas:search/tell
execute if function vas:search/compare run return run function vas:search/search

execute at @s run tp @s ~ ~ ~10
# function vas:search/search