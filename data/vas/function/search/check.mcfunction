execute store result score @s vas.have_structure run locate structure #vas:good_structure
# execute if score @s vas.have_structure <= @s vas.distance_set run say have
execute if score @s vas.have_structure <= @s vas.distance_set run return 1
return 0