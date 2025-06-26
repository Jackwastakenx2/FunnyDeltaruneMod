local Can, super = Class(Bullet)

function Can:init(y)
    -- Last argument = sprite path
    super.init(self, 0, y, "bullets/soda_can")
    self.origin_x = 0
    self.rotation = math.rad(-15)

    local tweenright
    local method = "in-out-sine"
    local function tweenleft()
        Game.battle.timer:tween(1,self,{x=0},method,tweenright)
        
    end
    function tweenright()
        Game.battle.timer:tween(1,self,{x=142},method,tweenleft)
        
    end
    tweenright()
end

function Can:update()
    -- For more complicated bullet behaviours, code here gets called every update

    super.update(self)
end

return Can