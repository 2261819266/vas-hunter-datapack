say try

scoreboard players set @s vas.distance_set 70

execute if function vas:search/check run return run function vas:search/tell_and_tp

scoreboard players operation @s vas.temp = @s vas.have_structure

execute positioned ~-50 ~ ~ if function vas:search/compare run return run function vas:search/search
execute positioned ~50 ~ ~ if function vas:search/compare run return run function vas:search/search
execute positioned ~ ~ ~-50 if function vas:search/compare run return run function vas:search/search
execute positioned ~ ~ ~50 if function vas:search/compare run return run function vas:search/search

# function vas:search/search