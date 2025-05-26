#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.equipment.offhand.components
data remove storage bse:fix_tag current.equipment.offhand.components
data modify storage bse:fix_tag current.equipment.offhand.components set from storage bse:fix_tag temp