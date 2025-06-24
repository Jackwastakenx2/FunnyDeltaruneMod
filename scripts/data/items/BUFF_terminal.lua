local item, super = Class(Item, "buff_term")

function item:init()
    super.init(self)

    -- Display name
    self.name = "BoostTerminal"
    -- Name displayed when used in battle (optional)
    self.use_name = nil
    self.description = "A wristmounted computer.\nUsed for applying various Buffs."
    -- Item type (item, key, weapon, armor)
    self.type = "weapon"
    -- Item icon (for equipment)
    self.icon = nil
    -- Whether this item is for the light world
    self.light = false
    self.can_equip = {
        growlie=true
    }
    self.bonuses = {
    attack  = 4,
    defense = 0,
    magic   = 4,
}
end

return item