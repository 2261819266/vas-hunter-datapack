execute as @a at @s run function vas:detect/pt20
execute as @a at @s run function vas:detect/change_inventory
schedule function vas:detect/schedule/pt20 20t replace

scoreboard players add time vas.sys 1