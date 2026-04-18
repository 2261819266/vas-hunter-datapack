scoreboard players reset @s vas.leave_game
tellraw @s [ \
  { \
    translate: "resourcepack.vas.load.title.0.1", \
    color: green, \
    fallback: "" \
  }, \
  { \
    translate: "resourcepack.vas.load.subtitle.0.1", \
    fallback: "", \
    color: "light_purple" \
  }, \
  { \
    translate: "resourcepack.vas.load.notLatest", \
    fallback: "资源包未加载，请下载最新版资源包或启用服务器资源包", \
    color: "red" \
  } \
]