function vas:message/tell {path:"/search/compare/"}

# execute if score @s vas.have_structure < @s _ run say -1
execute if score @s vas.have_structure < @s vas.temp run return 1
return 0 