---@class StatusCondition.atkboost : StatusCondition
local MAGBoost, super = Class(StatusCondition)

function MAGBoost:init(amplifier)
    super.init(self)

    self.name = "MagicUp"

    self.amplifier = amplifier or 2

    self.desc = ("Increases effective MAG by %s."):format(self.amplifier)

    self.default_turns = 3

    self.icon = "ui/status/atkboost"
end

function MAGBoost:applyStatModifier(stat, value)
    if stat == "magic" then
        value = value + self.amplifier
    end
    return value
end

return MAGBoost
