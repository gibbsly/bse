#doing weird branching here to save on command load since this is run often
#HandItems
execute if data storage bse:fix_tag current.equipment.mainhand.components run function bse:util/ctc/fix_tag/hand_items/0
execute if data storage bse:fix_tag current.equipment.offhand.components run function bse:util/ctc/fix_tag/hand_items/1
#ArmorItems
execute if data storage bse:fix_tag current.equipment.feet.components run function bse:util/ctc/fix_tag/armor_items/0
execute if data storage bse:fix_tag current.equipment.legs.components run function bse:util/ctc/fix_tag/armor_items/1
execute if data storage bse:fix_tag current.equipment.chest.components run function bse:util/ctc/fix_tag/armor_items/2
execute if data storage bse:fix_tag current.equipment.head.components run function bse:util/ctc/fix_tag/armor_items/3