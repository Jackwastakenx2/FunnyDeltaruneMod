---@class StatusCondition.atkboost : StatusCondition
local DEFBoost, super = Class(StatusCondition)

function DEFBoost:init(amplifier)
    super.init(self)

    self.name = "DefenseUp"

    self.amplifier = amplifier or 2

    self.desc = ("Increases effective DEF by %s."):format(self.amplifier)

    self.default_turns = 3

    self.icon = "ui/status/atkboost"
end

function DEFBoost:applyStatModifier(stat, value)
    if stat == "defense" then
        value = value + self.amplifier
    end
    return value
end

return DEFBoost
