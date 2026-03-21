# function vas:message/tell {path:"/detect/pt20"}

function vas:detect/trigger

advancement revoke @s only vas:detect/pt20

function vas:player/store_pos

execute if dimension the_end unless entity @e[type=ender_dragon] \
    if loaded 0 0 0 if score process vas.sys matches 1 run \
    function vas:control/win

execute if score process vas.sys matches 1 if entity @s[gamemode=!spectator, team=runner] \
    run scoreboard players add @s vas.gametime 1

# execute if score @s vas.music.random matches 1 run function vas:music/random
execute if score @s vas.music.random matches -1 run function vas:music/random_again
execute if score @s vas.music.select_again matches 1.. run function vas:music/select_music_again

execute if score process vas.sys matches 1 if score runnerIsGlow vas.rule matches 1 run \
    effect give @a[team=runner] glowing 15 0 true

function vas:compass/show/show

execute store result score @s vas.hasItem run clear @s * 0
# execute unless score @s vas.hasItem matches 1.. \
#     if entity @e[type=player, distance=0, predicate=vas:player/can_have_compass] run \
#     function vas:compass/give

execute unless predicate vas:player/can_have_compass run clear @s compass[item_name=tracker]

execute as @a at @s if score compass.update vas.rule matches 1 \
    if predicate vas:hand/tracker_mainhand run function vas:compass/refresh
execute as @a at @s if score compass.update vas.rule matches 1 \
    if predicate vas:hand/tracker_offhand run function vas:compass/refresh
