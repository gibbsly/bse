#recursively fixing spawn potentials entities
#moving into current
data modify storage bse:fix_tag current set from storage bse:fix_tag potentials_in[0].entity.data
data modify storage bse:fix_tag potentials_out append from storage bse:fix_tag potentials_in[0]
data remove storage bse:fix_tag potentials_in[0]
#fixing tags
function bse:util/ctc/fix_tag/fix_current_entity
#writing into output array
data modify storage bse:fix_tag potentials_out[-1].entity.data set from storage bse:fix_tag current
#loop
execute if data storage bse:fix_tag potentials_in[0] run function bse:util/ctc/fix_tag/spawn_potentials