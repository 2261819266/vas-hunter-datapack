# function vas:message/tell {path:"/detect/pt5"}

execute as @a at @s if score @s vas.use.compass matches 1.. run function vas:compass/refresh

advancement revoke @s only vas:detect/pt5