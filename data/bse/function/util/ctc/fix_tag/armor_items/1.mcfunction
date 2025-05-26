#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.equipment.legs.components
data remove storage bse:fix_tag current.equipment.legs.components
data modify storage bse:fix_tag current.equipment.legs.components set from storage bse:fix_tag temp