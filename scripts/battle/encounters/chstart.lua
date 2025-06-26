local Cans, super = Class(Encounter)

function Cans:init()
    super.init(self)
    self.music="ch4_battle"
    self.text = "* Strife! [wait:10]\n* ...Wait no that's... wrong."
    self.background = true
    self:addEnemy("cannit")
    self:addEnemy("cannit")
    self:addEnemy("dummy")
end
return Cans