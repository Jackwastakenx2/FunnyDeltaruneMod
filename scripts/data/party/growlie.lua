local character, super = Class(PartyMember, "growlie")

function character:init()
    super.init(self)
    self.name = "Growlie"
    self:setActor("growlie")
    self:setLightActor("growlie_lw")
    self.level = Game.chapter
    self.title = "Scout\nPromised to help\nothers at all times."
    self.soul_priority = 0
    self.has_act = false
    self.has_spells = true
    self.has_xact = true
    self.xact_name = "G-Action"
    self.stats = {
        health = 120,
        attack = 4,
        defense = 1,
        magic = 2
    }
    self.health = self.stats.health
    self.color = {1,0.35,0.2}
    self.xact_color = {1,0.35,0.2}
    self.menu_icon = "party/growlie/head"
    self.name_sprite = "party/growlie/name"
    self:setWeapon("buff_term")
    self.head_icons = "party/growlie/icon"
    self.lw_weapon_default = "light/pencil"
    self.lw_armor_default = "light/bandage"
    self.gameover_message = {"H-Hey![wait:5] \nKid!", "Kid, Get Up!"}
    self:addSpell("def_buff")
    self:addSpell("atk_buff")
    --self:addSpell("mag_buff")
end

return character