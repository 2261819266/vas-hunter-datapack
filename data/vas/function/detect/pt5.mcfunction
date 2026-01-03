# function vas:message/tell {path:"/detect/pt5"}

execute as @a at @s if score @s vas.cs_use matches 1.. run function vas:control/use_cs

advancement revoke @s only vas:detect/pt5