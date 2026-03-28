# function vas:message/tell {path:"/music/select_music/"}

stopsound @s music

execute if score @s vas.music.select_again matches 1 run playsound vas:music.unravel music @s
execute if score @s vas.music.select_again matches 2 run playsound vas:music.call music @s
execute if score @s vas.music.select_again matches 3 run playsound vas:music.sslj music @s
execute if score @s vas.music.select_again matches 4 run playsound vas:music.secret music @s
execute if score @s vas.music.select_again matches 5 run playsound vas:music.cipher music @s

scoreboard players set @s vas.musicTime 0

scoreboard players reset @s vas.music.random
