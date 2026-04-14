$loot give @s loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "item", \
          "name": "$(id)", \
          "functions": [ \
            { \
              "function": "set_components", \
              "components": $(components) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}