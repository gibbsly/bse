data modify storage bse:temp positions set from storage bse:main spawners[{selected:1b}].positions
data modify storage bse:temp hold set value []
function bse:util/rcp/loop
data modify storage bse:temp positions prepend from storage bse:temp hold[]
data modify storage bse:main spawners[{selected:1b}].positions set from storage bse:temp positions