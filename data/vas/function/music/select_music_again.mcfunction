# function vas:message/tell {path:"/music/select_music_again/"}

execute if score @s vas.music.select_again matches 1 \
    if score @s vas.musicTime matches 248.. run \
    function vas:music/select_music
execute if score @s vas.music.select_again matches 2 \
    if score @s vas.musicTime matches 365.. run \
    function vas:music/select_music
execute if score @s vas.music.select_again matches 3 \
    if score @s vas.musicTime matches 266.. run \
    function vas:music/select_music
execute if score @s vas.music.select_again matches 4 \
    if score @s vas.musicTime matches 319.. run \
    function vas:music/select_music
execute if score @s vas.music.select_again matches 5 \
    if score @s vas.musicTime matches 154.. run \
    function vas:music/select_music

scoreboard players add @s vas.musicTime 1
