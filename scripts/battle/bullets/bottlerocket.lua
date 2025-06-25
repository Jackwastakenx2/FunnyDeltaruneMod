local bottle, super = Class(Bullet)
---@param dir number
function bottle:init(x,y,dir)
    super.init(self, x, y, "bullets/bottle")
    self.rotation = dir
    local offsetdir = dir+(math.rad((math.random()*2-1)*5))
    self.physics.direction = offsetdir
    Game.battle.timer:tween(1,self,{rotation=offsetdir+math.rad(360)*4},"out-cubic",function ()
        Game.battle.timer:tween(0.5,self.physics,{speed=12},"out-cubic")
    end)
    
end

return bottle