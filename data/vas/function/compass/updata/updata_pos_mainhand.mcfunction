# function vas:message/tell {path:"/compass/updata/updata_pos/"}

# @arg name, uid, dimension, x, y, z

$item modify entity @s weapon.mainhand [{ \
    function: set_components, components: { \
        lodestone_tracker: { \
            target: { \
                dimension: "$(dimension)", \
                pos: [I; $(x), $(y), $(z)] \
            }, \
            tracked: false \
        } \
    } \
}]