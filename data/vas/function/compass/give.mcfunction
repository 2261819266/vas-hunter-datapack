# function vas:message/tell {path:"/compass/give"}

loot give @s loot vas:tracker 

function vas:compass/refresh

# item modify entity @s weapon.mainhand { function: "set_name", name: [{selector: "@a", separator: "\n"}, "123"], target: "custom_name", entity: "this"}