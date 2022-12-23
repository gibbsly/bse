#removing, and re-writing the tag object
data modify storage bse:fix_tag temp set from storage bse:fix_tag current.ArmorItems[2].tag
data remove storage bse:fix_tag current.ArmorItems[2].tag
data modify storage bse:fix_tag current.ArmorItems[2].tag set from storage bse:fix_tag temp