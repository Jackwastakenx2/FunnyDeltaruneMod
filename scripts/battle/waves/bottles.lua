local ExampleWave, super = Class(Wave)
function ExampleWave:init()
    super.init(self)

    -- The duration of our wave, in seconds. (Defaults to `5`)
    self.time = 10
end
function ExampleWave:onStart()
    -- code here gets called at the start of the wave
    self.timer:every(1,function ()
        local attackers = self:getAttackers()
        local arena = Game.battle.arena
        local x,y = arena:getPosition()
        
        for i,v in pairs(attackers) do
            local xoff = (142/2)+60
            if math.random(2)==2 then
                xoff = xoff*-1
            end
            yoff=-(142/2)+math.random()*142
            
            local angle = Utils.angle(x+xoff, y+yoff, Game.battle.soul.x, Game.battle.soul.y)
            self:spawnBullet("bottlerocket",x+xoff, y+yoff,angle)
        end
    end)
end

function ExampleWave:update()
    -- code here gets called every frame

    super.update(self)
end
return ExampleWave