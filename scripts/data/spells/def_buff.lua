local spell, super = Class(Spell)
function spell:init()
    super.init(self)

    -- Display name
    self.name = "DefenseBoost"
    -- Name displayed when cast (optional)
    self.cast_name = nil

    -- Battle description
    self.effect = "Boost Ally\nDEF."
    -- Menu description
    self.description = "Boost Ally Defense.\nLength depends on Magic."

    -- TP cost
    self.cost = 32

    -- Target mode (ally, party, enemy, enemies, or none)
    self.target = "ally"

    -- Tags that apply to this spell
    self.tags = {"buff"}
end
function spell:onCast(user, target)
    target:inflictStatus("defboost",math.floor(user.chara:getStat("magic",2)/2))
end
return spell