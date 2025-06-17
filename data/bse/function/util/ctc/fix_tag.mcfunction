#fixing SpawnData object
data modify storage bse:fix_tag current set from storage bse:main current.SpawnPotentials[0].data.entity
function bse:util/ctc/fix_tag/fix_current_entity
data modify storage bse:main current.SpawnPotentials[0].data.entity set from storage bse:fix_tag current

#fixing spawn potentials array
data modify storage bse:fix_tag potentials_in set from storage bse:main current.SpawnPotentials
data modify storage bse:fix_tag potentials_out set value []
function bse:util/ctc/fix_tag/spawn_potentials
data modify storage bse:main current.SpawnPotentials set from storage bse:fix_tag potentials_out