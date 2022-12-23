#doing weird branching here to save on command load since this is run often
#HandItems
execute if data storage bse:fix_tag current.HandItems[0].tag run function bse:util/ctc/fix_tag/hand_items/0
execute if data storage bse:fix_tag current.HandItems[1].tag run function bse:util/ctc/fix_tag/hand_items/1
#ArmorItems
execute if data storage bse:fix_tag current.ArmorItems[0].tag run function bse:util/ctc/fix_tag/armor_items/0
execute if data storage bse:fix_tag current.ArmorItems[1].tag run function bse:util/ctc/fix_tag/armor_items/1
execute if data storage bse:fix_tag current.ArmorItems[2].tag run function bse:util/ctc/fix_tag/armor_items/2
execute if data storage bse:fix_tag current.ArmorItems[3].tag run function bse:util/ctc/fix_tag/armor_items/3