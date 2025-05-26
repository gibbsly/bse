#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.equipment.feet.components
data remove storage bse:fix_tag current.equipment.feet.components
data modify storage bse:fix_tag current.equipment.feet.components set from storage bse:fix_tag temp