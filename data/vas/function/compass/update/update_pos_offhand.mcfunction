# function vas:message/tell {path:"/compass/update/update_pos_offhand/"}

# @arg name, uid, dimension, x, y, z

$item modify entity @s weapon.offhand [{ \
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