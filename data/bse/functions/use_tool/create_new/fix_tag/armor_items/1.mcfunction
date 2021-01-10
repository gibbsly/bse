#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.ArmorItems[1].tag
data remove storage bse:fix_tag current.ArmorItems[1].tag
data modify storage bse:fix_tag current.ArmorItems[1].tag set from storage bse:fix_tag temp