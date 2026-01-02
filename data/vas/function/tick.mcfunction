# function vas:message/tell {path:"tick"}

execute as @a at @s if score @s vas.cs_use matches 1.. run function vas:control/use_cs

