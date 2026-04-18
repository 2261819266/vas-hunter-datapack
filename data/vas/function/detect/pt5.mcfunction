# function vas:message/tell {path:"/detect/pt5"}

# advancement revoke @s only vas:detect/pt5

execute if score @s vas.dieDetect matches 1.. run function vas:detect/die

function vas:detect/rule_trigger


execute at @s if dimension vas:lobby run function vas:lobby/detect/pt5