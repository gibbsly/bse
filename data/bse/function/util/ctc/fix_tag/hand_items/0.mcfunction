#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.equipment.mainhand.components
data remove storage bse:fix_tag current.equipment.mainhand.components
data modify storage bse:fix_tag current.equipment.mainhand.components set from storage bse:fix_tag temp