local actor, super = Class(Actor, "growlie")

function actor:init()
    super.init(self)
     -- Display name (optional)
    self.name = "Growlie"
    -- Width and height for this actor, used to determine its center
    self.width = 25
    self.height = 45
    self.animations = {
        ["battle/idle"] = {"battle/idle", 0.2, true},
    }
    -- A table that defines where the Soul should be placed on this actor if they are a player.
    -- First value is x, second value is y.
    self.soul_offset = {10, 24}

    -- Color for this actor used in outline areas (optional, defaults to red)
    self.color = {1,0.35,0.2}

    -- Path to this actor's sprites (defaults to "")
    self.path = "party/growlie/dark"
    -- This actor's default sprite or animation, relative to the path (defaults to "")
    self.default = "walk"

    -- Sound to play when this actor speaks (optional)
    self.voice = "txtgrw"
    -- Path to this actor's portrait for dialogue (optional)
    self.portrait_path = nil
    -- Offset position for this actor's portrait (optional)
    self.portrait_offset = nil

    -- Whether this actor as a follower will blush when close to the player
    self.can_blush = false
end

return actor