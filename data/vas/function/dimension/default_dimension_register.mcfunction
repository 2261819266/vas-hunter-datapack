function vas:message/tell {path:"/dimension/default_dimension_register"}

execute if data storage vas:sys dimensions run return 0

function vas:dimension/add_dimension {dimension: "minecraft:overworld"}
function vas:dimension/add_dimension {dimension: "minecraft:the_nether"}
function vas:dimension/add_dimension {dimension: "minecraft:the_end"}