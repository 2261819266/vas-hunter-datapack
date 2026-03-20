execute if score process vas.sys matches 1 run return run tellraw @s { translate: info.vas.gamemode.fail }
execute if score @s vas.gamemode matches 1 run gamemode survival @s
execute if score @s vas.gamemode matches 2 run gamemode creative @s
execute if score @s vas.gamemode matches 3 run gamemode spectator @s
execute if score @s vas.gamemode matches 4 run gamemode adventure @s