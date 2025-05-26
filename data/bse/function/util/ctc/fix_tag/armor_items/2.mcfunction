#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.equipment.chest.components
data remove storage bse:fix_tag current.equipment.chest.components
data modify storage bse:fix_tag current.equipment.chest.components set from storage bse:fix_tag temp