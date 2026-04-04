# function vas:message/tell {path:"/compass/update/update_pos/"}

# @arg dimension, x, y, z, actionbar, hand

$item modify entity @s weapon.$(hand) [{ \
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

# $title @s actionbar $(actionbar)
