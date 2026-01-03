function vas:message/tell {path:"/control/give"}

clear @s

kill @e[nbt={Item:{components:{"minecraft:custom_data":{"need_killed":1b}}}}]

item replace entity @s container.3 with carrot_on_a_stick[item_name={translate:"item.vas.hunter"}, item_model=diamond_axe]
item replace entity @s container.4 with carrot_on_a_stick[item_name={translate:"item.vas.controller"}, item_model=comparator]
item replace entity @s container.5 with carrot_on_a_stick[item_name={translate:"item.vas.runner"}, item_model=diamond_pickaxe]

item modify entity @s container.3 vas:selector
item modify entity @s container.4 vas:controller
item modify entity @s container.5 vas:selector