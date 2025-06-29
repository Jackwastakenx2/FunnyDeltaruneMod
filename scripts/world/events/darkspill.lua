local spill, super = Class(Event, "spill")
function spill:init(data)
    super.init(self,data.x,data.y,data.width,data.height)

    Game.world.map.timer:every(2^-2,function ()
        local newbubble = Sprite("bubble",self.x+(self.width/2),self.y+(self.height/2),20,20)
        
        local scale = 1+(math.random())
        
        newbubble.scale_x = scale/5
        newbubble.scale_y = scale/5
        newbubble.origin_x = 0.5
        newbubble.origin_y = 0.5
        newbubble.physics.speed = 1
        newbubble.physics.direction = math.rad(180+(math.random()*180))
        newbubble.physics.gravity_direction = 3/4*2*math.pi
        newbubble.physics.gravity = 0.1
        
        newbubble.color = {0,0,0}
        function newbubble:update()
            super.update(self)
            if self.y < self:getScaledHeight()/-2 then
                self:remove()
            end
        end
        Game.world:spawnObject(newbubble,Game.world.map.object_layer+1)
        Game.world.timer:tween(0.125,newbubble,{scale_x=scale,scale_y=scale},"linear")
    end)
end
return spill